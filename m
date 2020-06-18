Return-Path: <linux-ntb+bncBDTZTRGMXIFBBU4FVP3QKGQES3MMP4A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A3D1FDD82
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:26:45 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id q38sf2815366pja.1
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:26:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443604; cv=pass;
        d=google.com; s=arc-20160816;
        b=JeUA1fEzk9O+OKRAtprZoXL+EOZ6gr3q6x9GOkJChlTKmFEDoVVHUpMhfIA/ZbSCvr
         yL/QDSVilMoMr4k0LgVAdOgN4VYY7+ReaISxtg2IacyRecjybv4JLvxB9GBdW9qm5r60
         T+QKERoI/El6NsFzkmsLJNL/rjx0e/CwhJ/GmXEL+Tk9qvp4IJDwMXh4Oq1MUIvatKCM
         ma9nMZgEApRJxdxWH3OrOHsT0KifTwDDflZLIkbFhx35PcfHXWpRu6/NikDM6RVpsFL7
         nT1u2SQr9a2A72dYx6NGcPaiFl/CY0mMZiLXubG7amfhRz2lCXK2uoHK0/dAbNz6Jz/v
         FsVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HxFtGyG+NgeVRWBu7UDQ0Ij2kHtPpyF41if4BDp+Cn4=;
        b=IlAZQrrfgaGjDPAc/8rANJvGrSBn3WufQgAjLTz25qGnaIME/REkrYQJD2vZbYKK8q
         DUAsC0dhpl+ofsqXIBIgN4mzycCPiQnHQfnNMq58quFJZkS8drNMqt3tpW+chUp6qcVQ
         4Ew7EJMWB6evwGtBq9pkURZ8PXqhkDTCsMRlWQpQEBZjGzulokgvXB2WQW476Nn8VOxz
         cZWNVB1aYeO5j3N7e9+pZf/6v84a1nrI206t7NURLH9HnSXeyRomMvHOuIZL/BvDft4D
         +bCkYRWwgm/GmWdmOcvfi36+WOg0x9GPgortJyuVp7K4tjCbgQBf2cg1liu+2bEDAfAZ
         jVDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yN8dFido;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HxFtGyG+NgeVRWBu7UDQ0Ij2kHtPpyF41if4BDp+Cn4=;
        b=d/O7JRYhIz3UjChNEqmNXUMBDY5VbqjnzdLEHp9XBJVnCbvPUfp0tMklr0O6DCxbwC
         d5QD8jujRSZtg4UcTIyjZZ1WQhaMk2rlXulWm+mGFYX1xrW4Ln/d0HK6y+xQj16PvGrZ
         v+/3XH06c4YvqC0OkoSX8tQtPzJdjudjJmDWrmMfTGgID8buHsYyCFxMxLk82NhfnWf8
         YDAt5P/8nkFIiCO/umJG+s3cgZrEsG3h4IFt7OqcLYGAKbfEfA0yFVP/7nr2KZ9FKQix
         V1xBqFUAYTdkIdMQrmgJl6JsqvrJsZiE0hwd0UElFd36c+hAU/NteeNCC+8NC7gJAJAz
         CDFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HxFtGyG+NgeVRWBu7UDQ0Ij2kHtPpyF41if4BDp+Cn4=;
        b=QHqOj01fKu5aDE0h40HL3/WVFMmZiDFJnc0PNpP+FYS5+pDJoIGi/l4iHGSBoJfIWj
         7ruYSB1o1dA6ahYSfQk8Dnw369L5fnCgDKEE28hTG4PAmvsPpKCMfu4Ln2F5DmGtLCxI
         VEnUSaNOoXGSpFTikclUqGYRKypfKz1nyeRP9wK744QfnizURZ5q9MsWlLWxJip/y/NJ
         nY9rgr/xP3RO6JPe8gBadWgzhZ5hf7hkryln73iIUEIN9HGuO0Wr3Tq4QwCLntamvVIh
         IcAspHVVkRaSZIO/il/N78eFdW+411Uy7z4YMUFwAx1hVvfckQnlVrKpm8DfCstIcndp
         KfGg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532zusrIppTU/dqKHdIOuFHbOftuqn/xhtWEfRpaMUS+YeN/Igbq
	kFgRDumEJ+ukEPR7GdanYjI=
X-Google-Smtp-Source: ABdhPJwtx+Ol6MsgxhWyO+hfvlfc8f4oxlyZfpySycUAXwhTmpjETT7fwqcsSsQCHdkxh2mOuof0jA==
X-Received: by 2002:a17:90b:809:: with SMTP id bk9mr1796693pjb.53.1592443603993;
        Wed, 17 Jun 2020 18:26:43 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:bc4a:: with SMTP id t10ls1507737plz.4.gmail; Wed, 17
 Jun 2020 18:26:43 -0700 (PDT)
X-Received: by 2002:a17:90a:7e5:: with SMTP id m92mr1849040pjm.196.1592443603651;
        Wed, 17 Jun 2020 18:26:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443603; cv=none;
        d=google.com; s=arc-20160816;
        b=FTx7wqoo8eDNTnP/STglRUjllPTdpvGVk4iQQaT1jWSOpv3uL5zkVBCeHFXDSxq7o8
         ugqV20Wf+8veg1Aql6RBnX3mnyd0lfYER3SSA75XVxNN00+wrAsqdaeSlJ3DmtmXbL3s
         Iqw+Aoqvz4z1djfuQnTipuokZ70IyfCuRDxSwTFMkCs5JCz4hV/x1gEUMpVgUKDi/nn9
         ZBM0mYnqI+B6KjXctDyfKX9LkFfv/HzIjFm0+r566sP5mIb+UbkHpckyfEHxKMP9+dXE
         aY61d9Rc+4BLLY58LHLyB1pZ0hXL77gm9Dilc51/obgbXwhIhgORctaePWttG5sehGSO
         x/cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OBV+DWpbAkB/nyp+Wex1ISTVnFd51wnrXHr2IA21BfI=;
        b=S3w1pcxTImd6uI1c8vLGlGb/WNAD3imzYjMUwgSLg4AJvXI8xcPoILOv/EIWXaeYvk
         9vl8CK0RqyN4aqUFc1NfQPF6UMP3BpojTSK7uM1TdsXYag5DO0WS8LHNat6U028gniMG
         xO9G8M0O56uc6y2jg+T8UeuuRTRJGgKIWhKo4A6vsJeQ+JNHUaj+rBVd/2GOkt4tWqGB
         GWi0xfDSTy4QbtPG2ZRGKYw+Q2KnkWJva125Bap5Y/1r3usUhIRemG39hvkoF8XZhdcn
         hXOif5udVP+kaUurQ4KbAGD16fatCHTzL6JNd8KIFlVUWuXC4x17SbmY+Qp+M6VF5Xtv
         FctQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yN8dFido;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mt8si409473pjb.2.2020.06.17.18.26.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:26:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8B15021D7A;
	Thu, 18 Jun 2020 01:26:42 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 032/108] NTB: Fix the default port and peer numbers for legacy drivers
Date: Wed, 17 Jun 2020 21:24:44 -0400
Message-Id: <20200618012600.608744-32-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012600.608744-1-sashal@kernel.org>
References: <20200618012600.608744-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yN8dFido;       spf=pass
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
index 03b80d89b980..b75ec229b39a 100644
--- a/drivers/ntb/ntb.c
+++ b/drivers/ntb/ntb.c
@@ -216,10 +216,8 @@ int ntb_default_port_number(struct ntb_dev *ntb)
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
 
@@ -242,10 +240,8 @@ int ntb_default_peer_port_number(struct ntb_dev *ntb, int pidx)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012600.608744-32-sashal%40kernel.org.
