Return-Path: <linux-ntb+bncBDTZTRGMXIFBB6P5VL3QKGQE647ZOVA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4691FDB17
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:10:18 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id a15sf1920554oop.7
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:10:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442617; cv=pass;
        d=google.com; s=arc-20160816;
        b=m1VCl6sP6jP0FIzxSKkNOdPwgpd4jYSVHieGjRGD8YDYoKED5O/OvlSuoyH0pjRM0X
         7H5AV2ie0asdE7JoOHRtKQJVdBCmkBdowtIBAc8kFfV/9MfK1TAKWZVUZ/PlsMj0OD+c
         rvTZdwMQVEcU4USJAOACNuFTCeB6RMnh6fqPILe9YRKAm/kG1khYUPBNN2WjMGOdUwdk
         VAq5qKogVAlAFEh/e63SpQSGU1Q06Gd9PuJg70oFX+z6cheYIsD6P5EYswGL+rb1G0H1
         PuNoCZh4CCEA64FXhurwVqfskqx/FlWNzLbfLyyo53SFVqu0dz5xOvQm9dBQtT/bctSd
         RdlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bHmAl90Db4iBs/0wf+V0atrUfhH3IdmazhAWBjMP3R8=;
        b=gRHg+R2mTr6fh8ueYtvx+tdnJtz5s3Azbu766q1bUeCOV1oMCnotD47fYm6mtrboNS
         XwgWsK155a6FUnbCvxXF80QsTnkggV//dF7J2crvMrbynPzyK5QudHXxJepMiJmXEjQC
         LUbeemX5b+fv2gVd7ESqPRr0Ogl5oOIbkstZ4dwSZteovMVxsAzCCtHFcC9ZuFTuMdsR
         UgIsVd03/yZg1BR2S15sITmdB0SktUMexchcIgqbrU/OmMXZ+TFNdOHwJ2ZiR7lqhhsV
         LI8FIWKpoTlMxDeYjtRhu9lbY6WDGbNlUmlxVeHLgfdPRBYnR8XFWngODDNehJo8HXaf
         WY9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E5C+vkRB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bHmAl90Db4iBs/0wf+V0atrUfhH3IdmazhAWBjMP3R8=;
        b=TL3ixW19NdKcqHfX7IojVa26yhaRqKyRjQTpTazvwC4B3PTyqkMzFJVUVD58DFlb91
         7rqqJr3+2yaSxKEvF2n9BOziVG8mhDAZHHCZou7rZGI6JQsbYcP6aulE2WrCvLlBqkfg
         MnBm9IcCcFhvoxNMXhA8tDib1FICpBNr5VnM49vLje8RowiuLiH3w3UPyYj1U4WTCB1N
         simrv0Ex2VRQl7pWI+/5+QAbS3aB2L/rcyBvmBLRZhnHpsYsbCIpdSdk8zoXiK0u+gcV
         z9X7WmpoWgsg/IFXk6+7PgXfH9pn6fmUXmh/jlQGeq7ZDWSPWAzGOY+qLZr6XHd1i6JN
         QW7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bHmAl90Db4iBs/0wf+V0atrUfhH3IdmazhAWBjMP3R8=;
        b=CXRT2K/3Ox5eRitFRcXGqBWz/soizkNDZN5gYYJZp9GGCcsce1Xla+zD/KEbyVQIrI
         rhoipnGq6G1ADp+d3ppk/4PQij5psFLKBYJ0lIY9PdHcxBIoEZOJk6rbomUuOdpL1GFV
         vNOAbt45Lf55L1vfK2GJrhED8oMuV9o+XRjD9UamVWJQNX7der5nvkMwjeBFH+lOEPbL
         q1FWcGyeN1hKVX00ozPF0ion7aTlfNq9ogFj2O9ChvnwW/Xkkv8aOS7EscLsCrNu7t+c
         08RXhBIK4cVgzrfRFfBDTdrSGpZ4MgxiWNYVwc/v/T0B20f/60qF9x7XZ3k5WDV6wD4z
         EUcQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530RYUTHGndm3RHHUe9/IQx+V1R/B4YeC7x+auzuzAtrNyUNY62/
	3au+o1v4z8oYPS3r7KwmH/w=
X-Google-Smtp-Source: ABdhPJybxR+mXwcC6Gz8VXV0NyMg+PJfUdBUE6q16IIFe4XTOLsrtA8PGaCVmzzeQ8EoANhojmlvbw==
X-Received: by 2002:aca:280c:: with SMTP id 12mr1179203oix.131.1592442617058;
        Wed, 17 Jun 2020 18:10:17 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:4d89:: with SMTP id a131ls814205oib.3.gmail; Wed, 17 Jun
 2020 18:10:16 -0700 (PDT)
X-Received: by 2002:a05:6808:499:: with SMTP id z25mr1233311oid.120.1592442616770;
        Wed, 17 Jun 2020 18:10:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442616; cv=none;
        d=google.com; s=arc-20160816;
        b=vef8yeCQFi8v40vuAWZZ1QrIcciMOD2GA92Gx80mt+r32yTPR1RhvTqzDAgmO7Zdr9
         G863beP4uyEoGmy5jMzXQy80IIlia4IIFnkKJ62OK9TRpMrrLdtdu4abaS0oItXT7yul
         ZMOvEz2Gotulyr129FikZHLnCIqCC6YYPPdTm/vBYxelTHDzt6g9MKzHzK77qhVrfSRK
         cCDfuk9HgF8E9jiOBqn16Tc3Uo3/mjys8k1ficQaH7CvDlzUOE3JqVXf1pjYQnDXv4QG
         2PMa8Qd1Zj8pZPpcvriGfO3St9z/9JZoPa+mzW/iUAra7lJ7hkf1dkDMfoz2JKUzNu7B
         C9ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d5PfEm+o6tGi55Xor7zze5HQvYUTTvSi2qTX1hjpRWA=;
        b=rC4UDLbyWXlGFmGmEfs0omChjVTmPPNpmWz7nhkZRBvmYjfbxN5qU3GEzcCL62UCAH
         VGPrqXcFmresWfLYLX0G0Gk6fwUyQhh8b/nxKWQ0AF3XLDb4O16jBzGYS7viWMjWvMmN
         pfL/5NE/1d72LkRw/bnrCZSuExaYeN8yXFaBDDYe8hq2TuXEZpdMCi7hfne+LBShJHSu
         pjwI452x6x6zgL/HGcDlDnPUMJx3F01gUeMqxBq98WCPIvyBGKf8lgATTjKkYOC+/JBC
         pHRlnJmEIzvwCrJi9R9ET/bnh516a//jgVTNUS6py99vYzTWJ2XHfzwqXFKtdaSDpKv3
         37DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E5C+vkRB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e69si119699oob.2.2020.06.17.18.10.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:10:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3465321927;
	Thu, 18 Jun 2020 01:10:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 096/388] NTB: Fix the default port and peer numbers for legacy drivers
Date: Wed, 17 Jun 2020 21:03:13 -0400
Message-Id: <20200618010805.600873-96-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=E5C+vkRB;       spf=pass
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
 drivers/ntb/core.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/ntb/core.c b/drivers/ntb/core.c
index 2581ab724c34..c9a0912b175f 100644
--- a/drivers/ntb/core.c
+++ b/drivers/ntb/core.c
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618010805.600873-96-sashal%40kernel.org.
