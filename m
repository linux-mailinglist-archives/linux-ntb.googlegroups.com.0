Return-Path: <linux-ntb+bncBDTZTRGMXIFBBMVVYDXAKGQECQUTG6I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 002A4FEE39
	for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 16:50:11 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 2sf10295368pfx.11
        for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 07:50:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919410; cv=pass;
        d=google.com; s=arc-20160816;
        b=fS7FAew5CFDrLYca1oaNg/IlRLWLPCfdWuJvXO+h7e4ufeRSEyy0wOF1Mv+wos4BoW
         DRDNrKs50X6gLB0I+xp+z2smIH6aO5pxb5uFbKUh7wlIaC8eZfXjRak8YSq+UD3mqhQF
         vdQr5zPIiTIjF8QVXtHswPt8/ZQ0DdSKIssB+Ot7sC9NMyKS7w3DN6/lufIdCXcjDgVA
         RBsylE2X+yqU5UfdO2zUSN7vPqIu9TNpW54u4NOQr4k2Ip3z3HQrfBK+VPLI+SJuFSzH
         cWY9uEdxGcj+8vCVMWCQxYiQZmrAeHLUMGVkoJ9HtmuN3IbF+nX7hVISyHgFGjx8o8ab
         4yxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KNRoa0Ijr1WFl3jk+MqgmNG3sKujUq2gfqULiLuOJYo=;
        b=SCPcNVkCVJI7++LakFp7/7IKwLuuvE+qd68FFJ1o2BDqdL1bnkGmRolMaeHKod0zeM
         8DK1aei12ftTDF5QfS6PvMciqkR7aIL3uuF/Vzs53w3ZKWMOq052y9wh54JfcWhaMmrX
         fjowO1JKfpcUokrcD49cOOqpauXcMDfyAXNL7+WnWPsOH75wHYjfer/Kt50EcqpNatSh
         rciB0jSzsvvs9k/de/JD4CmKGjfx0UEFQAK4cHRf7nOIn10oTcq1F3bIMdk0yoxHY6zP
         x+rqYdp7I3PrP0Lprf132ATC6k6n34zcAbUTOGvnEaPj2iSr63+yoVuugljgtbxc52o0
         LggQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ya1oX8DT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KNRoa0Ijr1WFl3jk+MqgmNG3sKujUq2gfqULiLuOJYo=;
        b=qNTEqJhKed2Zk6tiZfh1QUwR8uevo+VEjxahV6P2wgGpNKWaXp0oi96x0Fh5in/PJj
         MXYsfULTfkx3WxKq6EWxwnCDN3GojW72dBlNTppfi2IzqaN85Y6P/nKm2JM0hZ+/zFG8
         Onq7zR6tnSZtWy1Oocefuy/W8ZMObX7jl4Kdd2X9jvQcuMmVXQeAWeYLM88qcImouIWy
         PnI3h3EUnJ2lOVjZZhUYgYJHjO52VJ3jPf2BKP23j2g2icPJA1EsllhYJ2CWKyl3sjsh
         yY/VEAf+icT0LWWZaxUW88IPH4O+GE4J6LP2g4ZtYbEBNrrQAqcX19jwYxAXCLZkFncs
         RHLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KNRoa0Ijr1WFl3jk+MqgmNG3sKujUq2gfqULiLuOJYo=;
        b=Ytxq2qqmWBO3x+mQAmt5pIBQdbSjYymjS0SA8oLseT3xRdM6MIAuefiCFwkJLoSlz8
         d6RnSf4WP0gPUfdEZgjql74joyCp1zO5EH1S6Psi7DrEBTROhJ4bVRywyEQ+Ds/gXiWK
         bEhUREaXTtfDdNq0gGHCa2BxLvNXhZNkiV1T5pEQRrhT8SRE5GSxWQLRh19rhQ0GCi5F
         LyQY3HtnKVFl7NlZF8WYbuSfnOw293jRGbBpgemP1QNmPHm7IzbC9RaseFk3hYxdtTz2
         nosVh/Mwy9zfn4LPcaGlv1YsUBaZvbpDxqUwgtjePRCEIaWpjgnJCzGNrnFDR1RPqozb
         sDKA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXo3aSAwXgq2KXcWP+j/LD1dbEuJCiYzbrez+hBclL0nVtlj1vd
	7H72FB9cCHvaRDy3kyBiyHA=
X-Google-Smtp-Source: APXvYqxZO6SqVmGTLyyzwIbVt1osrZRJXs7EW2TWVUk5rFKTp6XkeHs0TOT8oaSvhE91CRxWDJE04Q==
X-Received: by 2002:a62:7a8a:: with SMTP id v132mr24306692pfc.228.1573919410688;
        Sat, 16 Nov 2019 07:50:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:8811:: with SMTP id c17ls2821635pfo.10.gmail; Sat, 16
 Nov 2019 07:50:10 -0800 (PST)
X-Received: by 2002:a63:7b5c:: with SMTP id k28mr23967610pgn.442.1573919410299;
        Sat, 16 Nov 2019 07:50:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919410; cv=none;
        d=google.com; s=arc-20160816;
        b=WTnuoBeD/qQ3A9LzdwTz3a+7X/7agLd1KTwrDWYuBU/pwGo2VQOrbnAYjiFyYzd4+o
         tYeHx3O1q5NeMKl1ZAcOAeUqmIki4/fWnMlLPCH5HJ2j9dS01jnPbrRLBzF7jG/UvXlo
         VTkuVzNE2ZbmEsrrF6kPsx5Saox3ovx6xINj33QD6Qo5ZRjfLsgzZpJlV0+Xjxo/oTsD
         7eQRMu73aLllJtpPihYy+TfSPYheGWjlRv10uCK06oKXd53YOxmjJTZgkiJi/RqIYQ93
         Fb4aoqaxmMRe0TCSrY74KDDvwVqPO+Gu/9Ki8sSgyw6WLfopp9vU27czANzpdna9eFM0
         iJaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sJOYPoQ+bezX3zcNK66/Qutu+w7fUUrdqv/6CUGtTho=;
        b=S/++L8yHC9WeY1YLBTz8g1f8tWTa6eydyahZpzMeNQs1iDz16PQytf0ZPZ4woe9xc7
         DALvo1RKtQrt3QjKUmkEd71rMg9IBPFWT4lvs4u3yT9MMjkpUby5AxTW6I+k9pmyRxtQ
         NVUZz3t5XVt41OkOCzPrDenrtPykrzgu8p2627O04ImgNgdqXlIj/L7VJUIQok2GGEz1
         O3i3E3Jc899zenb416hJGHfqI8w3AaPW7FXHzLIplnM76Ecj74UXiGHuz7TNFUx+w9oh
         YRUWFM6FvASADbXFszrwmTsVIAi//9cvwnX+69fKrGelVngkrR1AKyNZJwJr5Kw7SH3p
         kWBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ya1oX8DT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n2si604170pgq.0.2019.11.16.07.50.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:50:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A7C5320885;
	Sat, 16 Nov 2019 15:50:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Dave Jiang <dave.jiang@intel.com>,
	Lucas Van <lucas.van@intel.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 108/150] ntb: intel: fix return value for ndev_vec_mask()
Date: Sat, 16 Nov 2019 10:46:46 -0500
Message-Id: <20191116154729.9573-108-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ya1oX8DT;       spf=pass
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
index 2557e2c05b90c..58068f1447bb2 100644
--- a/drivers/ntb/hw/intel/ntb_hw_intel.c
+++ b/drivers/ntb/hw/intel/ntb_hw_intel.c
@@ -348,7 +348,7 @@ static inline int ndev_db_clear_mask(struct intel_ntb_dev *ndev, u64 db_bits,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191116154729.9573-108-sashal%40kernel.org.
