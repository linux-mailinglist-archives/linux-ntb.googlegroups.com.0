Return-Path: <linux-ntb+bncBC5JXFXXVEGRBZWW6KEQMGQE4U76RNY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AC04076E6
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 15:13:11 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id k15-20020a25240f000000b0059efafc5a58sf6412820ybk.11
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 06:13:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631365990; cv=pass;
        d=google.com; s=arc-20160816;
        b=KqGUgmSxAo54HVa7PR+kZ+292Uw/EFnHbiHl2zki8goah+pjOUcrr3d1+7ReDsyyg3
         8SWJMIP8k0HqokKiATsX0ewEdG6NGk3BGTElDML/e2dwN9ryNBHg1nQfQ+F545n7gWQq
         WREbB3OuAhzP/ntlNZTe2GBrqEWcoJF4+rYY7wiN2uRL0djTL5fTXdF9yzwbrFV1XjmQ
         QN2Rf+GANXkPRxBm5DEgi+s57WaKqdJ2Csx4hARB1lNyiJvWWW+LEE6oMUY0ey1hWuG3
         oQ2Dkynjt/KSoEPVpxHkZluL0TAIjgIXWQHJvem8egAux71nAnYpXMS9pEyvFyu0PXio
         ciOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ncclnBoZ/Jgw+w+836GYlPwxnkzRKO5nKCfku27o9Zs=;
        b=rXyZZFEzOy7VTxhdCDIt9uCfKRFaMpSLOrU5fdarBBWq6wLc9X1MLAN2GPOhjmfE4g
         JEZsMgr6+/jZWSnbIgEYP2q2aTsvpEJXImZf2c6Hq1HbVUkb0e+cBZw3iYUo84xIylpN
         aBdCvs+WYMvCw5eQLv06Msm4mFt+vfM/mwzMsJnftBkGizM8SKoMoCVpN4DiE42XgDl6
         QYm31pJBLMLiuxg8y9f4ni4gVti+HZ9pFNwh37FZHLGFTp/N75jf+vgAl6jxkGZLzOk9
         a0vpu4Xwoq59APA+nwMU1m1pl61EOyyQ+062WGlzM39sBq7wxpg19KobuYZNDMgDrJV6
         GjMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ktdDM1an;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ncclnBoZ/Jgw+w+836GYlPwxnkzRKO5nKCfku27o9Zs=;
        b=pnsFGw0y8l20KEyBkIaPCVgQ2OPXW0z+lYbLaJ9hDOL5jofYiJsNHWHctXwUI6zO0H
         QFry4kFgUROfESTYfgJhFag8myN1bamlGYoQaY3ZjMdYNqZpu0OARKlaSD1WV1XksOFg
         ZY6ctwcAX8i7s6jRJWkgD6qy6f8QQU7hHPr9b+rqrAq1DMiChlFe5mU8VgY5+BFdjdsr
         GLMyYryZAcR2+sfJwQ6DDoBRD1ZEYr59POKUC+8T5k1l7/5AVg1WB+msFHGdHpqjcGbo
         qRbD2qQmNyNJ4Up60WjooiMAeFFIb5FOsbQaaP+D9DWnZt71fpNeJ/d4RtH88ruvgHka
         GzlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ncclnBoZ/Jgw+w+836GYlPwxnkzRKO5nKCfku27o9Zs=;
        b=lSes0ikElakxsqI5A0kdk3o3ww16XK08b2/3PPC+ZhNIf2MYT9XuX3o+nhJR4N42Yk
         w+Pwml3ree/2M1LlTem3pUOPYWflrD1WIeTiEGWc2axhhkuS5Y8vBBZ44SjnZxnJ33uT
         nm0B5VQou0W7lXnO3MW639AWLR01OHxHs9XdO+r5ul/rfeQI0F83r5JGVe5RLlvHFPia
         YkYFiK2ba1DCirisINujViBW7H528Izmay7oHWLyat9jyhl/oOYOKq5QrXShfIYvIqrY
         S/vJOBYqTbLUW+Z9bdURtKvT9qvfT/0+lE4+V3o98PpLEYZzy7BtcY23MzobAbvfA+RB
         AtxA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533/4qAMeYQeCoCOFDx4Zf+3uSy2TOJszRgkCPhkWt+SgAZQAgPY
	PxS7GX6HZX2lEp4IKtsRPBU=
X-Google-Smtp-Source: ABdhPJzyAcEVu16oqXxzEbXF4ubkkjcq3z1JCtVvkbC/P6NYPV/JBMNGq3kV6+b23XWksNLXqqsbKg==
X-Received: by 2002:a05:6902:102e:: with SMTP id x14mr3955592ybt.31.1631365990290;
        Sat, 11 Sep 2021 06:13:10 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:37ce:: with SMTP id e197ls719483yba.10.gmail; Sat, 11
 Sep 2021 06:13:09 -0700 (PDT)
X-Received: by 2002:a25:3d43:: with SMTP id k64mr3614819yba.374.1631365989744;
        Sat, 11 Sep 2021 06:13:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631365989; cv=none;
        d=google.com; s=arc-20160816;
        b=y8MuhPVVfWQpEftIhkVWpxEv/ObEKSM2BsroBRPv/w9/rM0jXy++BHz4ng+0s4KsxX
         EBsEzvDQk1aatr0IahdnSZ2pmEThN8GzYIeOmuPH6xSkO3jZigm9JwD/Z+HTubf18Vd6
         09cuvOOBWYf5roaDPMvoGuJ9a7tZmWIymKOM9VXoiPn4zZYjLaerREDxr3vX3ldYED3S
         bPPkaJw0fsWvwzAdMfT2H0k+ArnrI8e0Lbl2Mfrli+9UsltG0BD8010d9pwJVKEw+bJF
         wgBJXqq0Q2TtstCWX6Ew3mJohztJqbuu+YeaiVELg/8nuAED4+Vp4CbxtbFI+oFUHYwJ
         Y8bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mzFjWi4UwZIvNo9XY3++yXPjx/0mnps15J8Mx8+sBw4=;
        b=kcLqwxUoROBdBt8LCkK2jxVWg4627SpQ7uNTEoZ0k4tzr0Xga341P1+oRYTIVK0GZ+
         Ns5OTKJkClEM77mTqPiRBE9H3+NGB6i9X6wY5L9tWJ1hE94zX3p2vlKMTQrX9+V2I2CF
         qQ9W/UGbdLFHeAetpZ4gy8iojLfXaQIon8V7k+GavRpKVMR6wpoSkugq68U0vz0m9bg7
         doVUoj6QLoGML8BoWg3zsuQADmjT30bYKKTth6+2ubJU1TzvLElSrHvNTP99Mwdtd2ar
         WWP/fj0KdWZ2Rj+M9JW3360ZwUUaip6gsJGWNkZb0mFC1ZVFLbmitHqk6htj8mlvUBKk
         4Omw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ktdDM1an;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t8si81931ybu.4.2021.09.11.06.13.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 06:13:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EB52A611F2;
	Sat, 11 Sep 2021 13:13:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.13 27/29] NTB: Fix an error code in ntb_msit_probe()
Date: Sat, 11 Sep 2021 09:12:31 -0400
Message-Id: <20210911131233.284800-27-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210911131233.284800-1-sashal@kernel.org>
References: <20210911131233.284800-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ktdDM1an;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Yang Li <yang.lee@linux.alibaba.com>

[ Upstream commit 319f83ac98d7afaabab84ce5281a819a358b9895 ]

When the value of nm->isr_ctx is false, the value of ret is 0.
So, we set ret to -ENOMEM to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_msi_test.c:373 ntb_msit_probe() warn: missing
error code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_msi_test.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
index 7095ecd6223a..4e18e08776c9 100644
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
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210911131233.284800-27-sashal%40kernel.org.
