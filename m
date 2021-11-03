Return-Path: <linux-ntb+bncBCGL5576VUFRBW65RCGAMGQEW5PSCBQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C4E443D57
	for <lists+linux-ntb@lfdr.de>; Wed,  3 Nov 2021 07:40:28 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id bm9-20020a05620a198900b004629c6f44c4sf1459440qkb.21
        for <lists+linux-ntb@lfdr.de>; Tue, 02 Nov 2021 23:40:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635921627; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q51qDQADjI5PHozOEC40N0qQXqS1B1jIjJ4qCOVwLWw4r39ZP3iuD5oysEDogJsajl
         W62+BiH5f6vXKlazUfbc6MWa+qC2kJdK24SmDRKqwOYZg2OdoVMQjl7KzmDztdgUeD18
         3NEq95Y50Ufxf4RvBwts3JvBSmEt2DpyHP/Qc+bYNq5MEFN6YxBSg1vXvjCyaG2kfVYP
         SdVD8UME2Wj7rH5fN/qSM27zDV8aNwuT6OA7EqtGlmT13gC7rYIVDQ7biNPmVqImQ7eV
         Tr5TZ9YohXfXYygJ86t0VIztRFCbujB1oftcqWiOakHKhG1fBLc8GNpSpFw4hEZyYwQB
         kntQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=zcmS1ggxqDrkSFSSutcskmUjtYh5MjZVY+aItXGkAjI=;
        b=oLl/5b5HGV0iYX8HNpXn20UEHcsLPqfi6uysGyMIFALzMw36ZDtqz8K8yjXkx35F9d
         QYRZA5B0+lVLeYbW1x+FZtBLCXaIq6SubdxceagYHmpwyJvnzDbH00Xl/Dgag5YjNaJa
         bNdLKFHgq0PefIv27bBQxnRXsS0JBX6NF1nB/q6gTlY1WAQri4r0wgNxVMmXjiTvdaFz
         uOG1eyOj59OOWklzkluc/e6khCvgoaAvOHF8QjQ6AD7n35aj660cK7xZmdmhBY2kPvIa
         CnfKP548K5jVbolvgzin27lyv14ta8Qi8Jf1xZ5CNwc+xidyv9vCDz02GDBPP3i1qMcE
         Cxgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=mlySzlMB;
       spf=pass (google.com: domain of jiangliuer01@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=jiangliuer01@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcmS1ggxqDrkSFSSutcskmUjtYh5MjZVY+aItXGkAjI=;
        b=QCl14b4vgRWC16r6sHwbc6uwwCGk77X//o4J1XiwU9bJXmrzoqG0/jrI00wXGgUFvw
         F1/OUMqXk0PPbBkTuW1BQzvvmy6r/wF2cCOuMg9qB+zug1tSrs3Ydz3/DqvBDgaz1+ty
         cOsIdFn47G3wBIb0v26cr5QvfqP9UDK+keX+3E/r0J4vHlQbMqgZWP8pJpSkpWm59NUD
         G98audiO6xGlZTv0zlXQy2ZtmTtDeiRI+G6rQkTZwWqPjDtpTDw9+FndO7p5XnW8fHAD
         arCaz9LvfexSa5DYVo8uAY9sVtXnH1Pnf9QAgxCOb581S7mPKhFN1vDyDunzOF+AEPxi
         NEHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zcmS1ggxqDrkSFSSutcskmUjtYh5MjZVY+aItXGkAjI=;
        b=DYSJgG9UUfXGmJPEuLvKcgYmutIGjyRL1zeJOOPik9CezAlsk6URfn8t4z8tfpIVaP
         xwdFrtvu27X1+eJGTg73EiJspOH+Nj533NaJQYljq/qNebCVpsjhQknA58hCVtSx6JDZ
         KQN4a24OJB+pjvGozBXsEOr1Tb7VZkTyYwyDYQ26gEoY1SAhC7ffHkzz/TcweZ7D7HSn
         qDoamDopJTDeMNmf+2oRXun6NVBnkGP0gtfMUcVrKa0hnFEjVSCigtOjdOxb3spUxZjD
         kunsdfnN/cdSmvqvPjnla9ATncBMVnPxt5JvYrdlGrDx8U4+8/GDudQ6vQLoZKzUX28p
         wtgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zcmS1ggxqDrkSFSSutcskmUjtYh5MjZVY+aItXGkAjI=;
        b=v8yqH6CNXeboM3Ct8mNfR4X1kFY3mjQmuxw3C9CQA3eeWDAR6BLW8JQPwD7iHRUFtp
         qFRTkjt6wZc8SXQfiXUPIkNhRi/md4LX1mmso1otw1P820NYTsAwv/v5skR8ojaVGJqg
         w4l/XWTqCoh8JoFECrL3PoBHsHVGcQFrd7V87dGXxb8YIBU87t5xZbUxBDz0hiIU3Omb
         doAYSnV9xkuSE/h7eSTHUPeip3n+l6BVVzOu/pC1p4JaY8erQFBsjoInFwhFIsx7y+In
         Pug23BDFD+Xa0FVQSIvwK+RykivxMDl8uQR4U8wTAgErSN3C6w4wHXNUsKUTyn8wkP7k
         D11A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532pu31DGOGpgpqgUDDtL9O8pQDlCLcd5wwpLfcPRYV7p8M241eX
	vddZtxEl5L2HMHXJpTo4WAU=
X-Google-Smtp-Source: ABdhPJww+NORACYMWwXETjKwpl0RDlkkBktLtWYgDx6gkauu+04MrPI30kIErqoOVJyCYv29tuvk7w==
X-Received: by 2002:a05:620a:2893:: with SMTP id j19mr34629351qkp.21.1635921627522;
        Tue, 02 Nov 2021 23:40:27 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:622a:608:: with SMTP id z8ls753870qta.11.gmail; Tue, 02
 Nov 2021 23:40:27 -0700 (PDT)
X-Received: by 2002:a05:622a:244:: with SMTP id c4mr44114886qtx.186.1635921627050;
        Tue, 02 Nov 2021 23:40:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635921627; cv=none;
        d=google.com; s=arc-20160816;
        b=P5qqhG90M2QCheUMVfHEaXt3FdgoMBxMfeqhsKkbK0Sgpj+o2UrHjAw7AhBV2Gx8Nx
         cPdmSveBy4qIkE1E6ONQkdb5b8uPAlzqsjNqJMJ/DS9bs4C/0IlVRzQNj5zR32Fx+ulP
         1CCwsPyrkSH+zNCVIUsSJ5GgZcQmIJYpN1ounP+Dq9ius/GqxZloltnh1/G6pVyWQFb4
         6Yb81mgE7nwElobaUFbBoppaFMipN7duWsTJIvdI7wPWEdXWAKnr2WjaZPKo7xl6LFwB
         j2BatOer9747NP01HDrpJhQ4N9sUhQiphNmwFujOLNcEgk7+gPuXwtDHC+HwD7GYEYKM
         DnHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=K41nRaOT6HXvWpw7/i0/NtMqBYrZ6ssKdKVNuafSDVM=;
        b=vUr48NvuFezDVP9iTzwNKQ5s0tQMRB0nzJ/pHh4tzwGAIb50LVX4dYFTC13RHMuQH/
         pTI+On0y++m/bgXAdpRztnbgfY6H3ZVoi2VNztirXquNJaJfOUDVVBfux6ZusG/iFUgE
         cOjEIgntWpELdnSuOo+OZGG8xE4Z4apd2AQ69BFxA2i3IJHV0w3BA9SbVbTNe6L0EyiQ
         tmBz0lbpG1HSPVeBDVWQHPYHtqKtXeIatC2/pP+zaI3N7h7GtPYbrT5KxIIzoVgOewXj
         H0hSDTba9Zb2rlG/jtmWhby3wLogjOK5VueWSIlPc5uzLweXtgmIE6RCYPBZxGIPmd1a
         ChyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=mlySzlMB;
       spf=pass (google.com: domain of jiangliuer01@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=jiangliuer01@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com. [2607:f8b0:4864:20::330])
        by gmr-mx.google.com with ESMTPS id u3si202966qtc.4.2021.11.02.23.40.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Nov 2021 23:40:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiangliuer01@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) client-ip=2607:f8b0:4864:20::330;
Received: by mail-ot1-x330.google.com with SMTP id o10-20020a9d718a000000b00554a0fe7ba0so2170914otj.11
        for <linux-ntb@googlegroups.com>; Tue, 02 Nov 2021 23:40:27 -0700 (PDT)
X-Received: by 2002:a9d:70c9:: with SMTP id w9mr29879685otj.243.1635921626551;
        Tue, 02 Nov 2021 23:40:26 -0700 (PDT)
Received: from localhost.localdomain ([8.26.182.76])
        by smtp.gmail.com with ESMTPSA id y28sm323961oix.57.2021.11.02.23.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 23:40:26 -0700 (PDT)
From: Wang Haojun <jiangliuer01@gmail.com>
To: Serge Semin <fancer.lancer@gmail.com>
Cc: linux-ntb@googlegroups.com,
	Huacai Chen <chenhuacai@kernel.org>,
	Wang Haojun <wanghaojun@loongson.cn>,
	Li Xuefeng <lixuefeng@loongson.cn>
Subject: [PATCH v2] IDT: Fix Build warnings on some 32bit architectures.
Date: Wed,  3 Nov 2021 14:39:43 +0800
Message-Id: <20211103063943.4098587-1-wanghaojun@loongson.cn>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: jiangliuer01@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=mlySzlMB;       spf=pass
 (google.com: domain of jiangliuer01@gmail.com designates 2607:f8b0:4864:20::330
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

Building an allmodconfig mips kernel, the following build warning
shows up:

drivers/ntb/hw/idt/ntb_hw_idt.c: In function 'idt_scan_mws':
drivers/ntb/hw/idt/ntb_hw_idt.c:1116:1: error: the frame size of 1032 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]

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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211103063943.4098587-1-wanghaojun%40loongson.cn.
