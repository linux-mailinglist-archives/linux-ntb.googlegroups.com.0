Return-Path: <linux-ntb+bncBDTZTRGMXIFBBPNTYDXAKGQEFZDXKWA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D7BFED9C
	for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 16:46:06 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id t185sf6662482oif.13
        for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 07:46:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919165; cv=pass;
        d=google.com; s=arc-20160816;
        b=qJCgqiNhsy457dc/NX1LFinELV6ETJdSb4lleBj0Vg0IkvvIcwDW/3CX4kA2xuGw33
         eaiqbdJM0NHcODVza9T3k7sXWbw4w5gD1snQGNIRNBaMZ+1z0WMTgQI5xgI5/nv3pdg9
         nXRmdeBcyjRj4lKAHsQnHFc1/RqndHp53viMJyY5AhqQAJMgWNUzHOu78DVFXkJ6tfhn
         MD4mWK2wPodM0kVQX/z0HfewZYa2i8sV2TYJJdQUc5yZJygHlZ2pXD4awGi1UtTWp3By
         eLmw99CwiJgl/ieuDNQHyGravgV1OJJA4URVRKVL1l4oyRC/AL5cikcuHwF6CNESohFW
         soiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BJPbj3n/VjCmyr2d+hFLi+iWzX+V9NzIDBEbvd1pZ74=;
        b=B0HAOnLv2ucaoGXgg7Q3NOnS6gH8/SBe0G0xVjCAyy4SNtDTM9tNeo6h/6EHG3hF80
         yU2HIBNSB0+RIkzfQ8bavWz5BdPCpAaBaJPs0vz3vWWe8eQT9pgv7Hqlalq0U4PG9SQk
         +gXrwwUCHNjKM32kQgfYmnD5BKX4U04oCZGsVUsbAxDoHiCtVpFAeEhB1Z7uAkTVVp8S
         LfTjbFQcsFH0etivmKWExyGutqdHVZHOD3IE85SzWJks+VQRPAbETnRxbT3t4EgrzqUS
         4MDd7enpyktstg47vE9NU2sEMOvGFowyrMfCGmZVwhiEe7ZY506d5VMxu+ZduBkA7Eri
         60EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DYpt+74J;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BJPbj3n/VjCmyr2d+hFLi+iWzX+V9NzIDBEbvd1pZ74=;
        b=OzR+h3jvVV9wfHtp3jsxPcQlME/3INfoqZEyrRmQQ4IEyQAgeg8Z5aowx1FHbkC1Ti
         OkqfYdXHiwBSaih11EKrw7sbgNPTsrwSBn35eBZCq037k4O6W6VFIHOi2Xg0E3ZuTQqa
         fjXCLwhf4yzUFnv9aktUOWmVZUS/DREEm+lOEdst9fhN4aXDtghPbtCao1x23xiiww8z
         WQJ6eBkPKcfUeRGnrhQUD1hUCUCRApwAlnfGy+wbSMbUfpRroai4i33PnBnwTuWF17xE
         mkgBRgHqc35SKDbGoxNJTC8nc1aqhzY69Ou4O1yVrTN4BSAe0LVKofUphRJV5JfP94I/
         pfxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BJPbj3n/VjCmyr2d+hFLi+iWzX+V9NzIDBEbvd1pZ74=;
        b=jIppklWMyOqR6xhyNjVxWWlm5TylW/1D+SLnKKewcnE+it84Ar1e87D0PZJYcRj2zE
         KQdsn313sBp9yfFMd8CzImYhHJ7SkHFFMb4SGuBF4zW83+8lZ6BI50uDANwoTByNGwfk
         rN64xva+l8rifuvVknhpGCBto4rgP2/qhaSA3FmDn3qB5Q8cz8Pb6UbQ42WePHEPse+u
         oMLVEwrlydkUnUqsRl+6qImTWCT8jbrMPFcnI+Y/7tlkQTiQeGc/qb+9JIPqzukexHki
         jCesw7A6f21HSi4bCsZAPfwNM709Gs798atxUj4ZrYfkO7aIbXXW3VSFwLg5loBz3eOX
         EEfg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAW/Gnl3pszUj/QtgGjmW7v75mGiN/ricAriM6dAjA/bcYyCIUvL
	blKSVye5wRsFj+MgFD6SDl8=
X-Google-Smtp-Source: APXvYqwBL8qyDA4q0GBUT1PtRq4qQC9YYl2vpj1cLYaFA4+VnUUsG7c/Vnx72pJa4oStdo0qYHvGTg==
X-Received: by 2002:a9d:7e8a:: with SMTP id m10mr16026099otp.180.1573919165837;
        Sat, 16 Nov 2019 07:46:05 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:7c99:: with SMTP id q25ls3347619otn.5.gmail; Sat, 16 Nov
 2019 07:46:05 -0800 (PST)
X-Received: by 2002:a05:6830:2363:: with SMTP id r3mr16131551oth.39.1573919165426;
        Sat, 16 Nov 2019 07:46:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919165; cv=none;
        d=google.com; s=arc-20160816;
        b=ieuyp1SCd/T9RGem6xW+GbFP1qdbA1WNuqHDY1Ygf6iE89DavF1392cwL46oG0HjUp
         10WPwxuPbZNbskW8xFVhaOIVP1w4946Pvj/uRLR+GVnCpUqOzvPKHmjPvuEeaM5bC86A
         2KYiM0VfD/lfxvC5gN2+PqNyCkebf7UqRKGIPO6VNvVqrB8VPOpSOzY1CQI0hoqzCRI8
         5di8Mu583VwuCVljMunvsDXm3aqVUMiUnYUd8L34C+MiTU/QROdA5XLxWZ97HZnwd4F6
         aezpdRWTKbDfq2CmN7LopYjchKiy6leQILNx4oZP1DWyMLZcX3J8gir+Xu1YFC7/W0tP
         Tccg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4F4vEEY0pDaSHG6gf1WntF3/4C04qVhaH/6918S19q0=;
        b=NRtVschejlhAgDmhWoaftqRAbNdoo7qMAw+fazszRJ5hBfQuX6DqOJsoA2y273OxxK
         OyFW3na3rotoTGNnSCFWtTEgnRbH52PdPXwKWxbBfBrRGRzwycyr1WNTojB85DmGfz/Z
         XbOqwSyXb+42uGRxP702aEm7ag/6nrEIxEaWqB6Qkaku0qUpTKV5CUr6InsAbJL0tQzL
         nehndiiAajaOZk/ns4G3vAWh5KFtIR24xQybpW5xNcY5RyoAcJz028gmQBCIzRA65ZpP
         iRcE/Px3VDKi86qhFhP3nxMtUMILF8WHB3sne+dLKXWYqr63CkwZOOjdj07EL7lmwQL6
         ma+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DYpt+74J;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p16si871676ota.3.2019.11.16.07.46.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:46:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5BB4220857;
	Sat, 16 Nov 2019 15:46:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jon Mason <jdmason@kudzu.us>,
	"Gerd W . Haeussler" <gerd.haeussler@cesys-it.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com,
	netdev@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 172/237] ntb_netdev: fix sleep time mismatch
Date: Sat, 16 Nov 2019 10:40:07 -0500
Message-Id: <20191116154113.7417-172-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DYpt+74J;       spf=pass
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

From: Jon Mason <jdmason@kudzu.us>

[ Upstream commit a861594b1b7ffd630f335b351c4e9f938feadb8e ]

The tx_time should be in usecs (according to the comment above the
variable), but the setting of the timer during the rearming is done in
msecs.  Change it to match the expected units.

Fixes: e74bfeedad08 ("NTB: Add flow control to the ntb_netdev")
Suggested-by: Gerd W. Haeussler <gerd.haeussler@cesys-it.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Acked-by: Dave Jiang <dave.jiang@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ntb_netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ntb_netdev.c b/drivers/net/ntb_netdev.c
index b12023bc2cab5..df8d49ad48c38 100644
--- a/drivers/net/ntb_netdev.c
+++ b/drivers/net/ntb_netdev.c
@@ -236,7 +236,7 @@ static void ntb_netdev_tx_timer(struct timer_list *t)
 	struct net_device *ndev = dev->ndev;
 
 	if (ntb_transport_tx_free_entry(dev->qp) < tx_stop) {
-		mod_timer(&dev->tx_timer, jiffies + msecs_to_jiffies(tx_time));
+		mod_timer(&dev->tx_timer, jiffies + usecs_to_jiffies(tx_time));
 	} else {
 		/* Make sure anybody stopping the queue after this sees the new
 		 * value of ntb_transport_tx_free_entry()
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191116154113.7417-172-sashal%40kernel.org.
