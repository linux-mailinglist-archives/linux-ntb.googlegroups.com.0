Return-Path: <linux-ntb+bncBDTZTRGMXIFBBTFNQLYQKGQEBNJP6RQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4361D13E33C
	for <lists+linux-ntb@lfdr.de>; Thu, 16 Jan 2020 18:01:02 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id w22sf8337320ior.6
        for <lists+linux-ntb@lfdr.de>; Thu, 16 Jan 2020 09:01:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194061; cv=pass;
        d=google.com; s=arc-20160816;
        b=mIuiiXIbRIEDdw7a4BDObMEvxpmDmEIDPU2bl1Og2ZGE1Qi3L4r0KgiRHsW69Qsg7y
         EJhsoeKxC0wkPkc7AM6e22qNUreOISiO8w+i8q3yJfK38PmrGVHPTC0gvxt0gZ5zyXn3
         yi0JruXvlvvEgOwSngfpKkq2iXmr7GBp8QWP2MDfeSKdjn6ZQlzOjlmF/HowOCtdQnjA
         IoZ5d3dRjKDufnTGMgENuvUDWziCCth9tv2Vuj4sGD5uEpynpTwnXJrBGlV8umhKums3
         h+XEjkVq70x1rqWAsAqmcPfvimNIBxvPSKOtmIOUgSp2GpksBOUaT4jjIZPY6JMcwWZ3
         KW6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nTyKjq9fQsPaUJN00cBt3mHDmasMkyjCHRp4bUtAi/g=;
        b=hZYgcPbeuNWe3/rfueYgHP+MSyYMk/PiBa0cPmZOIw8tSWMGa2i8Z+e66QJL0UCxOD
         221JurtlEJ2mPqCyZdrWJ6CnffAmeycWSodpIfLhargZ+5I9efrZitJ3uCznZJp0/uoK
         bR17MbiZydMCoJMOL7468b3RLtisG4e1S43bOAZuPT49EzOwpW529N1q+K1vPundpFSK
         hBrGO8EpXFXjerIsja95pvN5fEz7BFNrWCHJyWK4VFCYXrIUEH5a4D7rE574qVwu5f3f
         mXCsVOd+Oo1jh8Aitn5uxuq/ktKjLjtXm1d0a3/rMBX1jHAZI49OwLKTJLVTmvqXglZn
         5+xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DLdZDnCL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTyKjq9fQsPaUJN00cBt3mHDmasMkyjCHRp4bUtAi/g=;
        b=ro8+ReFz9TR5nx9ZWw0A4ccaIXGchRZdfNBi+U84pWj/I6/bz20vAG4j+TfzL39KJB
         yZl3rN8xzK92zZCYzBdP03tUKSg13P1ibpkYPI96XUcl6cKPy+WjwVfqC/ng9TShoVNM
         24e9dOvz0VtggwsKWMelydWb756bTwul9eT4JiqP9Ut7RVK4prh7KBQvxnItEgX81HQi
         fWHFlXFL/LbJeWj2iboiOeQWutfWFkIzMphR3RWgr+hqrTfOKeLOfTC3SnrLAPQNI2DA
         ULS+3ekCSosiK/CYEVqKCiTO3zEVPa8yUMlmCCrWsq1N/AHQpfATiRUYufVoHL6o8TIi
         fjZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTyKjq9fQsPaUJN00cBt3mHDmasMkyjCHRp4bUtAi/g=;
        b=ZskbTrDTtFAuB4O0fjIQYCFJkacv4ybJDDaZA3zQ0alSt33m0Z/DpNTJWuZvuiP628
         5FtzsI6clRX1OZX857Ctnzld3jyrLMTPLRbqznwJwmUsgYqxcqqKQaIP3sD0++GK5Tjx
         vYp8BX9j4kXzx+7j5n4Km5dpTfx6PKa4cbOmioyaSqDZRX4C390HLayG+hksvO2K8M08
         TDLMO8m7LqzA19tidta2t93Ed1gZr/etUANIaafi0MBLbUMf2wmitSSwkEF/6JbNfGDc
         Zcwk+UVPdXJHsLtP+/LvIMlJAbNTyBzzEyJhryzjLT2AcybLkf6E5rg2IDk+uMOktZoN
         R1AA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXQFzyKuFBt0ko6rgDvedrVmhhCq6jVnewdKC1N/J0XwlofVnqa
	UYQfxa0Lm9bZOqU6CMhA/T4=
X-Google-Smtp-Source: APXvYqyufq5SHp+Lf6fbzk2IGWfV90tubByxg62NSHGT5wB0+b2szLq3m7zOAKhGC4gcwLJBK1ywHg==
X-Received: by 2002:a6b:2b41:: with SMTP id r62mr16243235ior.189.1579194061090;
        Thu, 16 Jan 2020 09:01:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:8f2:: with SMTP id n18ls4058413ilt.15.gmail; Thu,
 16 Jan 2020 09:01:00 -0800 (PST)
X-Received: by 2002:a92:d610:: with SMTP id w16mr4179550ilm.283.1579194060681;
        Thu, 16 Jan 2020 09:01:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194060; cv=none;
        d=google.com; s=arc-20160816;
        b=w6b4MP2MnqN31KQA8YdN+RLDjE1MDeNQlWdrU8g/gohNmyJlEsky13SPYAjpQPPz46
         5aM7C70OPC8AUtyuDwErXkV1xJIEAynquKDD0SsuzdeFcmhAAfF9jrwXlOx+A43btHGc
         dWGZMJGYFxfK5lVufhHjYf6fRB6+2AiKPdkf6a6d/Kbly8inV/ky/h9CE/d63GEEXVKk
         DP85gb1h7IEdQncxSnRfs7JBJ7+pJvJ4+wDnTv/kZJS5EMQo1t5CSUpmWoHqG3W/bjct
         Ebe+ri0Dxaec/u1rE/7gcHQmRXV8HzjE3fz7Zd+9Wo2VG0YKq2q7KA6DAr73LVSWYa1j
         27eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aWkVXWlR/hnCYJMUTPxNVrfiTpBaFhGPBh9bdZ1umAo=;
        b=ZOnXiX0J5/PDlZAs5V27iLMjsEsU2WpHWEdtFxs+ppCKpC1DUBLnuoMpeaCjKIChuy
         /ejx016y+Z6w6KRgd/CP//twZIP1PflRt69xCs8oy8wLmk01Bi1eQLsAWFFbW9HOwg4q
         MSmZ2pd2QkvcM+sVy8ursr78EVYb9gV/b7JRgkHf3VK3p29L+rZEtKhW9FvUJzFquxDu
         s/taZMt5JdShufUSLjNGYnpRLmRsW7JrTWHHb4sXZD5urbO956Elqu6BRG+ZGf4lWBmH
         uE5kbbEaUI9u8P64dbfKG+gimuCFgTU8YsJPvJ7+CZGQ7wFlNkw0RlR79CmpvApDcr8y
         BMmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DLdZDnCL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k9si1065049ili.4.2020.01.16.09.01.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:01:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0BEA520730;
	Thu, 16 Jan 2020 17:00:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Paul Selles <paul.selles@microchip.com>,
	Wesley Sheng <wesley.sheng@microchip.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 172/671] ntb_hw_switchtec: debug print 64bit aligned crosslink BAR Numbers
Date: Thu, 16 Jan 2020 11:51:21 -0500
Message-Id: <20200116165940.10720-55-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DLdZDnCL;       spf=pass
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

From: Paul Selles <paul.selles@microchip.com>

[ Upstream commit cce8e04cf79e47809455215744685e8eb56f94bb ]

Switchtec NTB crosslink BARs are 64bit addressed but they are printed as
32bit addressed BARs. Fix debug log to increment the BAR numbers by 2 to
reflect the 64bit address alignment.

Fixes: 017525018202 ("ntb_hw_switchtec: Add initialization code for crosslink")
Signed-off-by: Paul Selles <paul.selles@microchip.com>
Signed-off-by: Wesley Sheng <wesley.sheng@microchip.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index 5ee5f40b4dfc..9916bc5b6759 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -1120,7 +1120,7 @@ static int crosslink_enum_partition(struct switchtec_ntb *sndev,
 
 		dev_dbg(&sndev->stdev->dev,
 			"Crosslink BAR%d addr: %llx\n",
-			i, bar_addr);
+			i*2, bar_addr);
 
 		if (bar_addr != bar_space * i)
 			continue;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200116165940.10720-55-sashal%40kernel.org.
