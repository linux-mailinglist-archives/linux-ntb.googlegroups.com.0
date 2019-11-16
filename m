Return-Path: <linux-ntb+bncBDTZTRGMXIFBBXFWYDXAKGQEQLT363A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1A1FEE8C
	for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 16:53:01 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id k127sf5769069vka.10
        for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 07:53:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919581; cv=pass;
        d=google.com; s=arc-20160816;
        b=MnPJgyk3KzLCqiVxaaN2Ipn/9h3dMQm1VFC6IuHqNTnssbVcdKQDVK53Twh1h2oAwg
         aQuVqsPqn6DHsaw0YB9RYYlGkp9XtfNdwVJHQNBrE9NiHXgXiFZSRSgCmGiL3VFQs50N
         sQXh9cTdQfOmhMtw51u7y7W93JP+PGpXBfsKylUxnagYdJhaRQJjCjGF019Tl5OzIuyH
         jNOOa25joZsbiYOclpHVPwjhVzt2DfiWdOzlWIpifcD/0ydIwxZHAWwVjGIPpa+1yidI
         5nEvQIfDInIXOvTJLh+HxZzx0uw1lYtF/PzLUPxIYqT9KomB77Tbbj4WGDf/RQXCswi/
         C1+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AEg6wivBAnV+jBCayEYhwWVhGb6W0XcctpQ8j5vhLi8=;
        b=IK1VeWObopvF9/SQkI/RwPmGCC0uIWG9uUK0J62HRrRlVbhF1gBoENrR3Ia9aZZeWM
         QHGSqqaPSjeDvkRei/8aYtrG+qQKFjtT+wGqPTDK9U6AoWI1OO2fECxPsSD0V8KeGEuV
         1f5X0xLgtKEO2twj0lY9JFee2SW6/HBmwqh+VtAMMRCjJLaHgvGflcv4Ufl47axOLX0w
         n/RbjBlP9FmlfR0isnqP9i0liN2x9ZZT9Zr9ZD00CP380dk2buSWvI8W/lhVz/Eul4B0
         cxqkJCbMc4Ld1lQ5tnIkf8Mv4Ih7jxKai76vG4lHIwx2WchupuV8NQpC/8S5ulDMRZ+m
         DJog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Dw7mF31M;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AEg6wivBAnV+jBCayEYhwWVhGb6W0XcctpQ8j5vhLi8=;
        b=jEPWDvv78YAi9ZRBjQcOK9jeQbbsebPUcX9O2R7kYxesATM59bLGpHlbqi50hGSgl3
         iu/8Hheg7OE3N7wdeE1C5SHyTVjJeAiRV3OUxp+38dIV+chsqsmgV3jzSQFrn1BstN2T
         3fS/QSn1AeHDr+jPO2KmkqlFO57e8sjYbmMcIUQedyEvjhS6zA/RlkLdFI5G9tVu2CDf
         Slngb3b+6pcorYpiApTuSzqHCsscoRpzT4QT2F5W5b/OO6XzCxOdFnM+uSeNgY03oDK6
         PgNZcMix3wcmjFoioouTxRMLkhMEIJPmEtzv4tN8D1A8qJtC8KxgLlgct4bD992ooFmA
         bIPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AEg6wivBAnV+jBCayEYhwWVhGb6W0XcctpQ8j5vhLi8=;
        b=cp9k+g7jcHxi6ZeV23wnhFna235frsL15mQxRnEW5MTJ096nGOtCnlB0FkQhg9aNLs
         sHsc55g1eBQtTYaEbjBnKzqDv1CIg7lolH1Yx2HiUepTNwI9S9WCdEj0a00EDGF8vW34
         gAbFbh0SKi3y8o3LrNTiLp8IvAYwnFxxpeAPQx0TZmIL0Wyz7MeQWE0l4hBenFsFU2Tt
         bPA+e5SLmJQL3AWPz0oZWbLwtAGHQgwTE4InGzaex0W/vZZRpkllk9nlIL9xDWM32NYt
         ld1+7AcV0f1ffpgfXM7bYdz9XLWWKqQWQOaeNgjnmDgrZD4V1SRV5sfqM1gtTH878rf9
         bItA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXORSacQWFAxDPJWjua6QodzKxbo80NeTmXCNz5OOH/tmfWmKNa
	A6h3gFjDX31zqqeJvdKTAM4=
X-Google-Smtp-Source: APXvYqxTvDTXHehlAOjywqtZXdtlpH6xJUaMA3pxMiEi5QioVKZlvjpB8/H77/QunHJ4+MQZGTZxjw==
X-Received: by 2002:ac5:c14a:: with SMTP id e10mr9788351vkk.12.1573919580925;
        Sat, 16 Nov 2019 07:53:00 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:1082:: with SMTP id 124ls893443vsq.8.gmail; Sat, 16 Nov
 2019 07:53:00 -0800 (PST)
X-Received: by 2002:a67:e296:: with SMTP id g22mr12551293vsf.233.1573919580602;
        Sat, 16 Nov 2019 07:53:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919580; cv=none;
        d=google.com; s=arc-20160816;
        b=Z6eiey++5cIc6eEEwnaliIO/oiBlXS5wmXUkwnI8Tbj5qyNhnVtYwd+D7kYKZ6IIGu
         5I1OSE64IsWGs7L9fPNxdWN+oaWO+/xqdyBZ9GTR42PzP//3NBXfvsHlqdDiCyPFeO0J
         Of3PWLVGG8Y8G+HqqJqbZ+PRogmAuBq3IvvdfIReDo83Hf7/wIkNzoRtEf1lailanTB6
         sV/W0Sr10sW6gDEkSRVy9uSCtzMora97p2rDEJQY0IHwn0bD8uvdiEzIOObIsuUzLOfl
         vvfAhUnqy6UhDYfTLkE4aEJeE+QsjY8/lGRE9BLErb7Skgye+IZFbtI6gwCpRG6+y5nn
         v1tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bpZ9hIeFB7zidqzpySFi6Yb7A4gi68jSncA5/iOQG8k=;
        b=0JpwUMRJe86gmZxW2IpXdDcDjB09ACUo3fv43HPrN3Vr3h9ZrZmqnWFrFG4YNrXENy
         8Av3gV5wumw5/dRD1BrRMuVElPlKdoMkU3BCS2MTc7JA7Y3fS0SjRl1u1f2OA3c/5XBk
         7npYxKSHVcywEGVGqzvoUczva4+Og1rYg9OYpf4MZqkMSEVzNhbh15R1HLVIQ+0D2tuX
         fhUNaw7zTYFE/fn9wZHvU1aZjTKhBidssuFuMHmg82Rg8YPXtCM/NIU9+BloNSeEleP0
         kBzwVduUV+wRhB6/y2FEInLZE8EqR4btkQv5AumEJ9WcRb1j8k3kMJ1aes7iqG2Ri3Ev
         JJCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Dw7mF31M;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f12si591902vso.1.2019.11.16.07.53.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:53:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 43C9721843;
	Sat, 16 Nov 2019 15:52:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Dave Jiang <dave.jiang@intel.com>,
	Lucas Van <lucas.van@intel.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 71/99] ntb: intel: fix return value for ndev_vec_mask()
Date: Sat, 16 Nov 2019 10:50:34 -0500
Message-Id: <20191116155103.10971-71-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Dw7mF31M;       spf=pass
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

From: Dave Jiang <dave.jiang@intel.com>

[ Upstream commit 7756e2b5d68c36e170a111dceea22f7365f83256 ]

ndev_vec_mask() should be returning u64 mask value instead of int.
Otherwise the mask value returned can be incorrect for larger
vectors.

Fixes: e26a5843f7f5 ("NTB: Split ntb_hw_intel and ntb_transport drivers")

Signed-off-by: Dave Jiang <dave.jiang@intel.com>
Tested-by: Lucas Van <lucas.van@intel.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/hw/intel/ntb_hw_intel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_intel.c b/drivers/ntb/hw/intel/ntb_hw_intel.c
index 7310a261c858b..e175cbeba266f 100644
--- a/drivers/ntb/hw/intel/ntb_hw_intel.c
+++ b/drivers/ntb/hw/intel/ntb_hw_intel.c
@@ -330,7 +330,7 @@ static inline int ndev_db_clear_mask(struct intel_ntb_dev *ndev, u64 db_bits,
 	return 0;
 }
 
-static inline int ndev_vec_mask(struct intel_ntb_dev *ndev, int db_vector)
+static inline u64 ndev_vec_mask(struct intel_ntb_dev *ndev, int db_vector)
 {
 	u64 shift, mask;
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191116155103.10971-71-sashal%40kernel.org.
