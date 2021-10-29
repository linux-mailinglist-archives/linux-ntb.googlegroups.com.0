Return-Path: <linux-ntb+bncBCGL5576VUFRBFWH56FQMGQEKYODZCI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id C531543FC00
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Oct 2021 14:05:43 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id v16-20020a05622a145000b002ac6641f41fsf1049750qtx.23
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Oct 2021 05:05:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635509142; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uixkte/L8hfxhbLVQS1xmTSBm7VkuWoV++ZyxsycM4ntoFXJ6h979RkNBknOtnm6fu
         254c1uByjQqv+9XDDpZjNFmyH9SqGZtIwh9K8K5xOaKRbKyp0ee3tyUsWCsrSyUvvDbD
         IeBtVypzSHz6O2U8tn9H9mMdeNiVEGQBQexoQTOSOlAvnqsIuNZ8aO2OeGxrpiJ6IFoD
         nW4pv0y9fatwijxhyJWCE6easKzxktDqVNG2H25L9ZdvycVpV6D7N2AeI4jsM9DxmeCR
         hbQSh6ILRyOySirMZzm+DSQ7hbdFx3QO9lIh8+HlMMXaiFAaeHWYLLIolG9ECOmhL34u
         b1Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=4umQDA/zUG1Rxzdc5RtuVhZeWlij4Bh2EOH4okAXlag=;
        b=ukEIGJpDkXoblluVc95sWzE05LZ8I4q5DkcLafiQj3VUvWnrSBd+fRz/jfXAG9gegu
         ywLLwZS+qDQBJvJGBJ6tH+Q45wZC3Q3rUd6+bu2X2qgaDPFeq8u/LQfdjyoRJklJUg1B
         UI+HgAqX2Dlcom6eJu1qy5SAfn0HqQXbjCUS9AU5TBeucBn0Vu9NGBKvf7B4zxzhS2oL
         uUgV29r8yW/NASCnvZnIMzx0opugoKvezSoY2fed/h7aVLyql+IHMulhB/qPRO/xPs6O
         OwcRaJ0/KtB0sVZYgGikdm4oRZpmcZ1GJNx3pp1uxje3dxDWqYYsUXyj4kMin9PuB2ah
         vOmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q55CnF0v;
       spf=pass (google.com: domain of jiangliuer01@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=jiangliuer01@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4umQDA/zUG1Rxzdc5RtuVhZeWlij4Bh2EOH4okAXlag=;
        b=RGmV+D4qAj22f0DkfWiUPYqhzEAtJmwKsCYynqm2SYUzSNZCr3qL0f86FbTY0CTFvh
         3G3Wm9Mb5ixc8alo9nyXchVDDSvS7+9V9MltmHDqbmAdfV/b/LvzR9XPgId10FDIsDYC
         JmBtFVs7ZSV/lZTYRLLqWH8pMwfBlImj7CX3EhT5C0N/xt5UT9k2+XYg+0oBJegJYGGJ
         qCraYtURGakznCR84JYP6pG/LhcRAQdvNKfYDkcgAwG0Y33c5PMMsHXg28uLCEgJYeav
         h+9WGH6j2+IBRfWTWrkJjI/soiXPDaOWFuyQGP4UuX3p3qfdk/ODzHYPV9t1MgQvhzph
         eubA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4umQDA/zUG1Rxzdc5RtuVhZeWlij4Bh2EOH4okAXlag=;
        b=YB3e5DTCDzWLBkQ2nSd9cR/i8eBtwaQCIrmexU34S3X4n1Dy8KKEY2nSGG4rrJGjKV
         I01Tti3x9lYyd0VH770H2MMbsmJ5jZeeOYvKzqT7S37Wlx4BYdU5smY8M6yHdDPvul4b
         jfzIjMV8xqLOBPidIag26OAgFVAkDtS3tPjEF2BQE3qPQ81CZKkAPE5Kky+zuwQa3fas
         LCoKB5JRPKFaTuQMnhZyuqfkWX/SdVasI/W4vS9sCNzzrmrw/CZhDyoH5Ud6kfb91Sjj
         SjwJJzj0Hr1V122lJrqQeyLmlH8iWX61lJAFBP77F4zqRZqYihEGJUWifReLPBsMu48n
         E6sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4umQDA/zUG1Rxzdc5RtuVhZeWlij4Bh2EOH4okAXlag=;
        b=mdyfO/KM5NwV3V5a3p9GnyNDfIJ55c5auFQOxD4o0YxAxI3QRyiBzJ7qJgYV5F4CYV
         lZ7YXkGABfobxAPIonFjKYHdjeDMmGxVBtHvAvn9+8Is1McivC9knzR1O8D6bnzatumc
         bn7Ko+64lEjGR0LiAYV4twGS5cxHjXcjSjZuplv9/taaxv+NMGnHC8mY7/j58+RXNiHi
         Qd1ZaPLbL9CMCxnyqpF69hpqDPXvp9tEPya9Wf1VXc3VDbv5DWySwfkINOoOiVwYO3Yu
         WyJb7bSSS9ydL3v6sejhTJhnLlsgIjUnx+XZb5XeU77N/tPC4AfdeiBNRpDnt9yBtgn/
         478g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53070h7uonSXL/nsKVxc7T4JO722+jd6fTvqAQ6LcUZn7PoIITNK
	7javHmvf4atLX106eSLVfpM=
X-Google-Smtp-Source: ABdhPJz6XaCenCcSswMIRGsJObdzFMIdw0gHWPk/83X3dW8Z16FEEyghxDO6JzrrVkXOCfLScrYJag==
X-Received: by 2002:ac8:7d81:: with SMTP id c1mr11148773qtd.257.1635509142803;
        Fri, 29 Oct 2021 05:05:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:1789:: with SMTP id ay9ls3567559qkb.2.gmail; Fri,
 29 Oct 2021 05:05:42 -0700 (PDT)
X-Received: by 2002:ae9:ebc9:: with SMTP id b192mr8806903qkg.73.1635509142401;
        Fri, 29 Oct 2021 05:05:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635509142; cv=none;
        d=google.com; s=arc-20160816;
        b=0m3Goa6wm34iRgL2HZ0IRJUfoiWSphOZRKl+jUK7d6RIqICE0KNvuQsHhCeFEL0aUp
         hCQoaGKW42X3GdRBTiEB3vJ4riBHMNezn8NY1Dw9r2RQ4inabaYIp26jjMG5ZN3z9LDR
         q9uxdRZjbHLfLEDTx8DUyOOuY9AJLXyXRFQfkE3xy/QNp5uE74t7fYLGIR4o4lDdkLl2
         WZPHg4Zg9iaXJRbfIrJs07+6T5fBGv50Yjj664KM/Y470zTvWeuqjH+8OifKNMbMjjd3
         pPRq8R+EL3EHLvobMPi2d78a1zRRZMJTBki1zy4UTCuuhRibpCqYAkVc4+znbpcj4HEf
         MmxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HLlRcXd2QtiX8z3dQeo4pNq89L8qvQnKsAQRhfpicnk=;
        b=uSax0ChhowUc1xtKzUmBqqzddyTTChar2UryibRffhJQcV5TEFcxO/KUQ1234Oh0pa
         OK76OPzHG/jY67ijtNi2QuDrrtnHK7KkzBMGFP53uLqgEwZ+AZIM7Fner+5zM5mbusxz
         YUW9mrCAj83nI137cnqXRrJnK3oVT4UKexKMQpZWeu3M9jBeY6NJlEfD2wt9ZdRUzAXq
         eo7ZKKf0iEmHUOVTkqXvv9NduEi8JVSjxzYISM3zAoQ3hNmxJo5qvtG3gJDXz3G1qVLT
         kLhEr7LSkWEGXhA4cihkLaU2f9MSuwnMTrlI9TZau7+sVmcfRDWhIZbsQmitaulUKNPR
         781g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q55CnF0v;
       spf=pass (google.com: domain of jiangliuer01@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=jiangliuer01@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id b125si731128qkf.0.2021.10.29.05.05.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Oct 2021 05:05:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiangliuer01@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id t7so9685923pgl.9
        for <linux-ntb@googlegroups.com>; Fri, 29 Oct 2021 05:05:42 -0700 (PDT)
X-Received: by 2002:a63:b502:: with SMTP id y2mr7728372pge.214.1635509141807;
        Fri, 29 Oct 2021 05:05:41 -0700 (PDT)
Received: from localhost.localdomain ([112.20.112.18])
        by smtp.gmail.com with ESMTPSA id j15sm6863120pfh.35.2021.10.29.05.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Oct 2021 05:05:41 -0700 (PDT)
From: Wang Haojun <jiangliuer01@gmail.com>
To: Serge Semin <fancer.lancer@gmail.com>
Cc: linux-ntb@googlegroups.com,
	Huacai Chen <chenhuacai@kernel.org>,
	Wang Haojun <wanghaojun@loongson.cn>,
	Li Xuefeng <lixuefeng@loongson.cn>
Subject: [PATCH] IDT: Fix Build warnings on some 32bit architectures.
Date: Fri, 29 Oct 2021 20:05:12 +0800
Message-Id: <20211029120512.3456871-1-wanghaojun@loongson.cn>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: jiangliuer01@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=Q55CnF0v;       spf=pass
 (google.com: domain of jiangliuer01@gmail.com designates 2607:f8b0:4864:20::532
 as permitted sender) smtp.mailfrom=jiangliuer01@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

The frame size of 1032 bytes is larger than 1024 bytes on 32bit with
unaligned memory accesses architectures.

Signed-off-by: Wang Haojun <wanghaojun@loongson.cn>
---
 drivers/ntb/hw/idt/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/hw/idt/Makefile b/drivers/ntb/hw/idt/Makefile
index f75e9d65c8a2..4e52d83ae75c 100644
--- a/drivers/ntb/hw/idt/Makefile
+++ b/drivers/ntb/hw/idt/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_NTB_IDT) += ntb_hw_idt.o
+CFLAGS_ntb_hw_idt.o += -Wframe-larger-than=1280
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211029120512.3456871-1-wanghaojun%40loongson.cn.
