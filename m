Return-Path: <linux-ntb+bncBDTZTRGMXIFBBBUEVP3QKGQEQXJZOHA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4A91FDCD8
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:23:19 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id h30sf1586449qtb.7
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:23:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443398; cv=pass;
        d=google.com; s=arc-20160816;
        b=g2fHQVJYmSb/K1Xi/+vklNxfZRCTXi8HTfYMY6yAbx9rWGzhHrgXQb4s/PYZb5CrBe
         oaMvJIf0ar9S2hFOlmxUC6GRzvF6J80CSXzRTHLEkNw89D8GMUX58ex+VQjok8tGm8yw
         P7ZqziIum6NlL9efCsQ6II4TncDOPeDXW6t0ZzyPdElNKR6+v+uAcpxK4qUFyCOB9rpM
         GBkRHU5mQ9HRnvpobsLt9QdbVZ9N/XIzhN3s9uMauT4kN3hhkNXILewijYHdI6TbB7Ck
         4amBbGEtn32Gi9N/dDuG4gOxCXXY4U6+SlcjZrWAwgQYHQL/+Q09OudVyeTy/sqXB2pG
         ecoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1byAe7/K/+Ftl9tuxf89MuaFCFBvkJ9w4s0+yCn8+wA=;
        b=VVcPiHZU4yQWfVx07Sl/DJynnROY4y/BHpW3WNCZAE5jKmcbR6WuFcVCyQxrF1XHib
         DswBbXJcUkxYTmA5aIMuX0WzNX9nsAURUZ+L43OMBezd+/suw470BRgn3tFymdlUvAgt
         ajNbOffTMggTrZAXCof7uRLp5CdbPF1RvJxTihNvl2WtskhC1NuLmFGgCJOp9sw/A3Bi
         0pttgZzSs9DGO1/3I7GuoAmACGttb07dep74qWmND/5v6xsq4d/hN3Tym8film9+llyt
         B066z4DKUYCre8ViD1zi3c00b0uJe2+MWvMYl9zWXkvOhfcsmm2UIfSgEBSNFWwPIUoA
         X/Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IOrnn1pA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1byAe7/K/+Ftl9tuxf89MuaFCFBvkJ9w4s0+yCn8+wA=;
        b=hFa9dcsbFqMtTJoT34E7h6WRV4akkL3Rs88RUG+EgriBSkLAsOfGij7kBuzW11dzX8
         mPPzrjOWyEi1mHbA/85xuv3y57EjkE8llc5S5qPkDWXw/LtJzslNmUloJ0lxH/ivE/ur
         ezeePsSFRNGKihffjMp+CnPZnaqtouKPe9l96FWc6VptJouCk/OeElDMGgBw+gdHFsyK
         ESLlhrR2EBVoFwsT9L/qjvb45q7prqdJzFjdoapSMoKnBQIcR/Hn6fmg22VC5ezAZTjm
         Dy6p2ZMOOIsA4y4c97E9/HjeBOZ6sPP+IM03dj5s19rch+ZsRvNHvg3FpwKqaagqBY3R
         QijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1byAe7/K/+Ftl9tuxf89MuaFCFBvkJ9w4s0+yCn8+wA=;
        b=ObsZjzd5M/5xqXe+IpaNiM0gqYdVq/TbrMgaTY6F08PlwLrCJK5RSMU2TeMVUNYcL8
         k3tS7Y63vTQSkqKQcyZ9R7vKVorsxo6vjTn1V9EOoMowbm2OzDcAul6ZBhhc/l4ujvZY
         SBCdUhW6sIOLMcUEM8Ra9NdGTB1FGD/7KJuW2vugBBmrE0lWZoDJ76/34bKXn5mboVMi
         ED2CHMEDkcb8xEUhgcmeWRUEDgLcp620zRRHqD39VxPGITAbvYJgqcGqna7HWNrt3W5h
         7Vpc4IaU0k1qQQybZKwfQdQsLId6Co1lD2FeZIHzyj55tT+Cd8EmehklOuTBDsQHBVKu
         t61w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532H/R6NLfc5iGFfvhj6N4aQ23UfBjsQw4tSzYOYm65GDmaArdNt
	sanzjrBo49a2OnDN81YRJxc=
X-Google-Smtp-Source: ABdhPJzOi6nPgLrlAWO6LkqcwHDKor5wum7VJ/2cH2Fs3QfTHHcai/SzniwPtkAPwH+stcSZDT5tHw==
X-Received: by 2002:a37:9bd7:: with SMTP id d206mr1582849qke.113.1592443398574;
        Wed, 17 Jun 2020 18:23:18 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:5a3:: with SMTP id q3ls1962684qkq.2.gmail; Wed, 17
 Jun 2020 18:23:18 -0700 (PDT)
X-Received: by 2002:a37:887:: with SMTP id 129mr1548202qki.52.1592443398285;
        Wed, 17 Jun 2020 18:23:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443398; cv=none;
        d=google.com; s=arc-20160816;
        b=fWoMuoWZbVh68g2s4T+8ZcrhiNIY36fdLebUzWKts3do4fNVlq8KEmGDBMbWh0uzCV
         Gs1lBpxtDal5ko4wpm1DRRH5jaVlK3CKmvQqZzhELlgxg9m21uOQHSeoxiOunibRnBO3
         xq/+uR+wgbCJOWaJSEbXNdqatMM2KSkftUDVopd0mIPT108kNBg5SxFw6IGRgwmzMJlz
         hU6rw9p3+vEwibaECgmX2WJRl2iGbVIz6hiYucRLcXSik5gYw1xScQkcFbLl2wxzmJw8
         C07lVvxL9gWJzLrKw3RKxfBxv8UV6/90HSBk45sXHjmhY6x/QcneetBu2TpWRS7WakDm
         tVNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pqEU3JkWFUhD5xTSGlCR2wfHN33oUl1zhVP5DV7USCM=;
        b=vUHuKG8VDeVP4zr8/VeEnf0SKEd8FZPc627OxZb7oOiIN80Maln3aqGaGCQ0To6kHe
         VH6ShllMhhSGBSbqXJA8vr7rzGAckoIy11ynSWGrv2H1fmaocm1lRGQCrVop6Pj4ZtXC
         1iiUO4yE4VT4HZOPY8dhMWn59u351mlL7WduOTVzlAeqtrxUhselhK3vhm0qKosZZEsf
         wzkXJ1ud6Xe52LnicDY9nC0L2fnymCMLauIUlmGfuWtRa9ktEUipVjuvUcNtMSrvr4nU
         RMtYcdscooQM2O43B2ZFMWrGrTXlPyPLSmzFaoCYlDHWlRlO9UIB7oQdE+BU0JVY4VVg
         8Kow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IOrnn1pA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z202si48281qka.6.2020.06.17.18.23.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:23:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9EB4821974;
	Thu, 18 Jun 2020 01:23:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 043/172] NTB: Fix the default port and peer numbers for legacy drivers
Date: Wed, 17 Jun 2020 21:20:09 -0400
Message-Id: <20200618012218.607130-43-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IOrnn1pA;       spf=pass
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

From: Logan Gunthorpe <logang@deltatee.com>

[ Upstream commit fc8b086d9dbd57458d136c4fa70ee26f832c3a2e ]

When the commit adding ntb_default_port_number() and
ntb_default_peer_port_number()  entered the kernel there was no
users of it so it was impossible to tell what the API needed.

When a user finally landed a year later (ntb_pingpong) there were
more NTB topologies were created and no consideration was considered
to how other drivers had changed.

Now that there is a user it can be fixed to provide a sensible default
for the legacy drivers that do not implement ntb_{peer_}port_number().
Seeing ntb_pingpong doesn't check error codes returning EINVAL was also
not sensible.

Patches for ntb_pingpong and ntb_perf follow (which are broken
otherwise) to support hardware that doesn't have port numbers. This is
important not only to not break support with existing drivers but for
the cross link topology which, due to its perfect symmetry, cannot
assign unique port numbers to each side.

Fixes: 1e5301196a88 ("NTB: Add indexed ports NTB API")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Allen Hubbe <allenbh@gmail.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/ntb.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/ntb/ntb.c b/drivers/ntb/ntb.c
index 2581ab724c34..c9a0912b175f 100644
--- a/drivers/ntb/ntb.c
+++ b/drivers/ntb/ntb.c
@@ -214,10 +214,8 @@ int ntb_default_port_number(struct ntb_dev *ntb)
 	case NTB_TOPO_B2B_DSD:
 		return NTB_PORT_SEC_DSD;
 	default:
-		break;
+		return 0;
 	}
-
-	return -EINVAL;
 }
 EXPORT_SYMBOL(ntb_default_port_number);
 
@@ -240,10 +238,8 @@ int ntb_default_peer_port_number(struct ntb_dev *ntb, int pidx)
 	case NTB_TOPO_B2B_DSD:
 		return NTB_PORT_PRI_USD;
 	default:
-		break;
+		return 0;
 	}
-
-	return -EINVAL;
 }
 EXPORT_SYMBOL(ntb_default_peer_port_number);
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012218.607130-43-sashal%40kernel.org.
