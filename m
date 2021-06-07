Return-Path: <linux-ntb+bncBAABBEHK62CQMGQE4SVQH7Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AC639D48D
	for <lists+linux-ntb@lfdr.de>; Mon,  7 Jun 2021 07:56:33 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id c20-20020a621c140000b02902e9c6ad8cd9sf7189854pfc.16
        for <lists+linux-ntb@lfdr.de>; Sun, 06 Jun 2021 22:56:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623045392; cv=pass;
        d=google.com; s=arc-20160816;
        b=UROF/iofotn0GRQBVL45YYIg+BHBG/rVh/21wB/mH7xwLy6cJiiX9D/loCI0t8/43d
         Y9GdR93cT9lDjA7zArJynEcJG640wdfXrs0ORXB/2uLnCATyd6+HCikwuyyroIfEyUpL
         nihXL8L5UT1A8TPej98ByN1TjnEDs2ldt136+MPu3dP7rbbtQxPpuMAkwM1WePrZoG6W
         2SEQtif1bFa5jwufBMr2221oxqzXU+flsa3vSKRptb3nI8Ldy7sPRgE9r1Zt/3lVwvJX
         LiwhAgGrY/m8FCJxO0Brsz516V1IVtSvSfY+VA+e05kgte6hByKQwhHIPpmFiyuD8vhN
         CtSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=2oPApXbzBbK/pveCSMzbvW9gZ7AEGUNNscLo2gkEchE=;
        b=syUwQkSmJa6of2wrBroyBrCB3/HdNLjpEtCm3YR2Urk1wBbRiti+1EpW9pl2ED8KF6
         wbCVa/ds6OC2fYlrp9rY1y3hlsOI8zrAmk6iEaSW5112rC/ngWr6vVwqC3fXyUyRiXSo
         HVR4BtioU/Jv5l1GIgPN5lDQ77B5EtP1QVdkG1VluglAjDZeKKgroOt3fqGgGQ/pCIls
         /+QES4z+6jPeIxgO2f7QDHStr/5wOZJNn1c/lBsMdCAEFpFt+Fv6/vD2svPriUn5ApJy
         dAi8ZW6zvJFcRhQPN7cQT96pJ6g0nat10rkXZ9mZXxOuGJZDAoXxaLrTt3DHqvxjYrN3
         MmDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2oPApXbzBbK/pveCSMzbvW9gZ7AEGUNNscLo2gkEchE=;
        b=p6Jtr1difEj0nYofOk0gRwBLeznhGhZibfGeOu4y4tfSXBbgBhK3Uxbgy7xDzFKgvb
         d/ccpVYECapb+IOTbGsEAHz9BkgbahE1V1HRLQIsd+dVF897W82hrFcqnqD0jbkn0wJf
         or7mQ13KLwnnULcHVahzX5anfz0aoTrmscbxo/B8P2h+LfBaTTyh74tZGSZjTC71cr/V
         CzHuJDzjlKTxmDJeejZlCGUzOKOvbDifv9c4Zqi0JAmVm3FniA1fjS1YDKf0IAnHqcse
         vL+VMNNGsc8Bb6dmJy1xLUh0Whfx8CjNOGD26UJ2xMhrBYb8wkmCDdfAxfK4r1skrcGx
         6VDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2oPApXbzBbK/pveCSMzbvW9gZ7AEGUNNscLo2gkEchE=;
        b=Y5i/b7TcpPXH+FL7jjsLFGpGKVn7tKGFyOQbCs75KXkQ1oWh8gClIz5VOdkM7gqhN1
         Z5TvcBxkjo+fVFek7AdcQZEL65xqO5IYx7wqkl7cRV9BVwn7JySfcscdvnFFTLrhV089
         m9E/UhQ8WaFxavkcvY/8ZzfoPH/lNRMoS3UqiGE4hGow6tDTwqXO4MdqDejdR8oNXcgu
         yLcMJCKWW783A081qQNrRYZU4DNOxGLgmCag2Xlium0bK9it95++pFzyLhmT1GEJkV7v
         Pvg58lZ1G6Wx4a4oVKFg0VQIAKKRmwSOiK78zJxMXDsy6GnVxfCvOeHlkg7LdF0vZCD8
         1iUA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532/RksCF/rMNL7ujp0k/YxICG34D0eBa3+p8AIOfNo6HiWN5dPI
	zwtrRwClAE3wdfnJiWLz1Eg=
X-Google-Smtp-Source: ABdhPJzuFjLNR+Q0v8A9OSymlP9ogsUQnqOAZva2wYyBr8T36ylDr1p5lagVMOhtrW0D388gMf+xKw==
X-Received: by 2002:aa7:90d4:0:b029:2ea:3333:4ae with SMTP id k20-20020aa790d40000b02902ea333304aemr15606009pfk.44.1623045392545;
        Sun, 06 Jun 2021 22:56:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:414e:: with SMTP id m14ls4124540pjg.3.gmail; Sun, 06
 Jun 2021 22:56:32 -0700 (PDT)
X-Received: by 2002:a17:902:9694:b029:10e:d206:cdd3 with SMTP id n20-20020a1709029694b029010ed206cdd3mr7390840plp.85.1623045392064;
        Sun, 06 Jun 2021 22:56:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623045392; cv=none;
        d=google.com; s=arc-20160816;
        b=lGOZhTYasmhLtnapYhhHkIZHYprnhtddu6wyNLVf2KQbulmmgAcWA+0u63ydLelUx/
         a5EY/zMQpHjyNmI3GMt6VzT9pTyMeUVNFTnpPrMNEmJo7wykBfH7teWxxZ+vBlErFsVv
         vVdFxr2L7gpFl1IImbfgE+Tcsb0ovQ5EJPbBlcu/0gcdCtdXqCTZd0IPi9I+Si1qKZrU
         BtZADRGrjM0GPy9v+ZykX204ujpOtxHKTiRRFBpx435zsu0lZqko4ff7uDyXsMzhrdxb
         owV1cy4Eahif3ZiB2wKhgwseQ3sgLVALOVUM2Y1Dg4IZLp7KSHrFoeAgZ2+2b0Rhww6y
         rWhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=QNfhWd67xpyJE96EX743bIXbMs6iqwMef4q643lOIdU=;
        b=hOQu9S98oqyx1JVph9h/Js8N60rLFGa7/BF6nG4e5yTB/N3cgOSoRJcyhQPXOAth9t
         s7YXvaH0GRJ6rowMCML6pLIukIzSJDiS6f2Ltfwbk2lq2HYUx63aaRffBDD8lA4xxH8k
         0cnyFmVW0v7fjXS7DGqXc0PHXQnWicFGM/iIPeZqawCBZTJ6NN7Uwy3cB3moF5bZGiB4
         P1p1OFA6UsxsDdv5U4VeySY6l6VO1EV1i5l+PY1yIzrRIGG1mqALxvwgLsIgFauBNdN+
         4iZbwjZeCDb1k+WwJYj40DQomKHmrjBha9enE+YGnx8wIg/5tEkdwIxBOXuYuPpRBEKs
         RMhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-43.freemail.mail.aliyun.com (out30-43.freemail.mail.aliyun.com. [115.124.30.43])
        by gmr-mx.google.com with ESMTPS id j15si809996pll.3.2021.06.06.22.56.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 22:56:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) client-ip=115.124.30.43;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R981e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=7;SR=0;TI=SMTPD_---0UbWDIvI_1623045387;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UbWDIvI_1623045387)
          by smtp.aliyun-inc.com(127.0.0.1);
          Mon, 07 Jun 2021 13:56:29 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: jdmason@kudzu.us
Cc: dave.jiang@intel.com,
	allenbh@gmail.com,
	logang@deltatee.com,
	linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH v2] NTB: Fix an error code in ntb_msit_probe()
Date: Mon,  7 Jun 2021 13:56:20 +0800
Message-Id: <1623045380-125394-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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
drivers/ntb/test/ntb_msi_test.c:373 ntb_msit_probe() warn: missing
error code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---

Change in v2:
--revise typo

 drivers/ntb/test/ntb_msi_test.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
index 7095ecd..4e18e08 100644
--- a/drivers/ntb/test/ntb_msi_test.c
+++ b/drivers/ntb/test/ntb_msi_test.c
@@ -369,8 +369,10 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
 	if (ret)
 		goto remove_dbgfs;
 
-	if (!nm->isr_ctx)
+	if (!nm->isr_ctx) {
+		ret = -ENOMEM;
 		goto remove_dbgfs;
+	}
 
 	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1623045380-125394-1-git-send-email-yang.lee%40linux.alibaba.com.
