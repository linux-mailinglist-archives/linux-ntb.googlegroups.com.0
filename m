Return-Path: <linux-ntb+bncBAABBJ7546CQMGQE4TDJBJY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFB639B6E8
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Jun 2021 12:21:29 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id j1-20020a17090a7381b02901605417540bsf4944124pjg.3
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Jun 2021 03:21:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622802087; cv=pass;
        d=google.com; s=arc-20160816;
        b=B27ZGZ2T5osrbKI4VcbRpJDOuXL3wfClsO1Njtme3UIX4AHYC+GkI06vnzkkVJ4JrE
         6bL4QhgtvEJCmvOkcxZJDkKFM/ddEwZkDsfeWNMSOjaEfutatpsE8LtUps7G8Zz1bZQs
         R5KObesNM+lmo5PUwZfe3OX2gm1jtYLJPhFyhEO1PrwsCce/aqOxFQ5dXmRafhyWzG7+
         Q1x19TcqoYvd6ryCBCsPWvQoLbu4lLF2OFYeZY3mtVW61emSTfLUhn66bAUK4O/suH6N
         lopkwgQYpVfFmL+nRMHwrz98UdAfao/3eNQPU/GhWQl+Pre1uZPMm/4laOmS3xROuXLW
         71cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=NvoAUFl9vWrgEwil2lJXlTs3CBsBVL9h4u2HCs49BUg=;
        b=myCZ4YZbIhc1JC19i8zVoL4FxepKCVkzTclWIdt0mS8hLXueycjxGCO0dAeK9Zrbni
         zbz7I4XzMDm/bf4hsvg9zefmqJBw3OZTNh6PBh4+TTQYAL6jPw20wvRlzZvlJqEAQzjs
         V6jkDp5O3M5QXU0TjEPbZcbd2ce9v33GkhEfeQct+rlGgzwFud/GQjhzXolWH077QFDo
         0wsrI/fD9nfeIiu+RLw9JXRuOEE9eM6bJYqlpxxD9STGmopLG9sIWkh1wViJA3ezgUCj
         761G2Lek5VQ4yGhXET0UlmgXi8B26rHfzxjaSI2bkIFmvZA5ZnJ2Ae67gKtMjqTNhRkE
         mmdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.133 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NvoAUFl9vWrgEwil2lJXlTs3CBsBVL9h4u2HCs49BUg=;
        b=saOQg3r94VEuOgbwqHeB6rWpJPfZtUudqgJJe1NyOTicsC8B0qfn44Tuc/MKJQlKP9
         ef/+NuCSWdBtfMVrS0D/6Mj61vzZzLEvzllypI0GgKqcXhUGgoevu375rdpuG+COs6Ze
         0rElY0YScigDR7bfkjygKZw5AjWuGAXCWygOsa9EuZQC/4fPYaPdFbIikKV+8bLBRp7F
         E10fX5m7R7nOe58lJGIRS+v0//ij3gKeem0tCSkcB3Ha9eiVqXMCmplGpK5w03e40wbG
         2/RcGCSaKt5GOs2G06mrEi3NKsgx+neSPqbW0Lcmk/T7zmey9Cx/E1uQvOJFZYx3mDoF
         y4fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NvoAUFl9vWrgEwil2lJXlTs3CBsBVL9h4u2HCs49BUg=;
        b=pOhqsZjWUuct73EP0xRrsBt+hMXNF34zT+ANf2SvtvDEzdXdLTnNTgD0aoflgrcn1b
         ztenUvit306nlxH44JO7QlndT2d2X+zBrjsU4hBOpFfd+Zum7QxIjobO60AhhzQR+UiV
         4zeGHX7kXCi+je8X5Wl2dMshT0b/qRAE3DYLr/gtj1WWgsmbhy660Ba+IbPOe4PcS+ak
         KSZngrvcht7oIUY1THlsynmAQXYHPFXwY24/OAr/K3MAM3s7+Wp8NdcN7JV52cOMCZ0L
         ysSbPO+ralauUutuIs3BwcnBWQYUgI634Tq5GIjot07cl5Q37oWw7PjyMrP13q6oZJpG
         MDKg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533AZKHIrZ24FAsWa1gh2QA26NNyRmrNmoVzB7rQ3BYZS0Lr09pk
	sWw030yCbKD+e/DjMsvlpWQ=
X-Google-Smtp-Source: ABdhPJwPJp+I1LMUwE1dn1Q5xd/eRvNLG4fCkcJJSED8CTXEuqHdU+ewnTvOnM9lA3sSXhdDDKkumw==
X-Received: by 2002:a17:903:2403:b029:ef:9419:b914 with SMTP id e3-20020a1709032403b02900ef9419b914mr3553037plo.59.1622802087599;
        Fri, 04 Jun 2021 03:21:27 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:e7cf:: with SMTP id kb15ls8030518pjb.3.canary-gmail;
 Fri, 04 Jun 2021 03:21:27 -0700 (PDT)
X-Received: by 2002:a17:90a:1b6b:: with SMTP id q98mr16631681pjq.53.1622802087031;
        Fri, 04 Jun 2021 03:21:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622802087; cv=none;
        d=google.com; s=arc-20160816;
        b=PXR73WJ8Kvc8FEecws+5jnDuKFa3yj7cfc9V0ibddg4FBQ46QnYfV/gnTVfs5BGJtH
         NEc44RsZHXrGoqdW/UXQERifRCirfEeV6lPxP3qRbVCd6i7OWm+z9EPK5zYsLxnR3Lqz
         jN2LmS8DD52OGpa4UvIiqbfTpAj1BqmWp2xgf30imRquscff9o8JjyhYj6aIbhZ6a+CE
         rjs6DJampyoG/oRCmbCcggHobQEgiMkymUQNYy/1GTmjW8cGKmb0lAYwZYmutXWaINRn
         F0Jd+yk+Junyth77HIF2nu3tPqr80x7kld47gbFv9/wYOjQmg5MiGJs4gFCm4PUwgpac
         aYyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=hlvssWk7xaGTnp2BQmJFGxY4vrSgj6iuxVAfcM1hlPM=;
        b=SpXTxZ8q1gMgbuK/WM63DBRrK4dRfGqqQ0zkwev05cXryXZ8l9GLuckoZh/vF0Fou6
         yHjtm2i0Nf1d8iNgZbUUjeppoTjiM4AOyVHOs90aGf/SXW5Osc7sEcUvxtT9Z6ZxDz0B
         fogSQNM1X+OnzKVRalfilJBtbOAUt3OIS6Ik4HrxpyBkSb51UZzwtSCGb47qK/ZcKNFV
         UN0g0tAysqsKo3zyhcUoa8vinp0sNcAzZYWtC5IUWPBMZO0a+44d3h07m3k9T3eme/EN
         /j3FTMFaa1byEWGaSpqcX1QfyDOJAadDlC2on50F1A4qBPWdhHwaGaKWsjGVRMpl8o5b
         Yyow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.133 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-133.freemail.mail.aliyun.com (out30-133.freemail.mail.aliyun.com. [115.124.30.133])
        by gmr-mx.google.com with ESMTPS id w7si401881plp.5.2021.06.04.03.21.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 03:21:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.133 as permitted sender) client-ip=115.124.30.133;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R661e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=6;SR=0;TI=SMTPD_---0UbFb0BY_1622802077;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UbFb0BY_1622802077)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 04 Jun 2021 18:21:23 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: jdmason@kudzu.us
Cc: dave.jiang@intel.com,
	allenbh@gmail.com,
	linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH 2/2] NTB: Fix an error code in ntb_msit_probe()
Date: Fri,  4 Jun 2021 18:20:51 +0800
Message-Id: <1622802051-43464-2-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1622802051-43464-1-git-send-email-yang.lee@linux.alibaba.com>
References: <1622802051-43464-1-git-send-email-yang.lee@linux.alibaba.com>
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.133
 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

When the value of nm->isr_ctx is false, the value of ret is 0.
So, we set ret to -ENOMEM to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_msi_test.c:373 ntb_msit_probe() warn: missing error
code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/ntb/test/ntb_msi_test.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
index 7095ecd..5f9e0be 100644
--- a/drivers/ntb/test/ntb_msi_test.c
+++ b/drivers/ntb/test/ntb_msi_test.c
@@ -369,8 +369,10 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
 	if (ret)
 		goto remove_dbgfs;
 
-	if (!nm->isr_ctx)
+	if (!nm->isr_ctx) {
+		return -ENOMEM;
 		goto remove_dbgfs;
+	}
 
 	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1622802051-43464-2-git-send-email-yang.lee%40linux.alibaba.com.
