Return-Path: <linux-ntb+bncBDTZTRGMXIFBBVMBVP3QKGQEH7YM2XQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC351FDC39
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:18:14 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id p18sf3101860pfq.14
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:18:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443093; cv=pass;
        d=google.com; s=arc-20160816;
        b=gxEBsjEQfnhYQk6xIUBWIhhUlHlS5bwEfE4ECOr5GzK8iRdwSkrnGVTLYCtEm5qkAq
         ThXidukqNMnIwZpoxkylr0WKyB/XZy+jx/YWypS+8Rq7lBzjA6fDuA2bco0yl5jv8Pk9
         MejLWBrL3mjuYKtNtUqwZGpjAG4M3xIxwyniiMhFk7sRHpqwNljEyh8/T7am5wZt+x/E
         IsqwsFBETOedNa7A5ys57jTcKXjidCqIiKS1AcHdATAsgZCMIgOSTIAKRFV9LBV+7IGh
         o6xOY3EvYnA67JrJviDIvXEgiqeCikrIpjGU+S+V6L64vQ26scy5b5j8X5WqZmhk1jOd
         mCVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QLc1ftX5OsWz0V6zR4PQjy/PkkgZtUQA2hgoaGemO/Q=;
        b=Ff1nW/QqCjiP5oKJuHrQwHITnpwPUYU7E6croc0YwMOhQ2wnxs0tm2M0ed7+mY63bO
         fQ/gHxlJROXT0PWS0c398ElGuTGfsD1LCefPXe2k8qLx6ZGIxRX+6nF0AYViWTByoC9z
         f/u/yhgT+ASbEKf9thN5FrNzfQQ/QzXOPddtpaA9NCaoHjdiuCAS8k3NQkl/UTr0b0jg
         lZanMhtIg6GPmNk7YiCGhhVC3i5gpsOYvoe95nkg/QLvH+QKOQqijd8m5BanFQK5yvWE
         N8L/phnX7xFiV8bQtOV1Y7ckHzZXFq5SfGIp1+v0SBVtgJWhC6TWm6RtxwIuA7Ci3QpX
         QLTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FE14Dspw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QLc1ftX5OsWz0V6zR4PQjy/PkkgZtUQA2hgoaGemO/Q=;
        b=bomIoD0h+O62wrJt9oiYjdnudGCPNEKY9ZAgD11N/Hz3TB7HgfjdQdONYcHeX4E8B4
         Kz9NqyzqouTUnsemNyqECbvwswZzw0PCE1YuvgezB2dOnxA1AD/HXAzl25RvbIlOo8hx
         CtGizvDGgt0Xl9lYxf6I1TRLjh4DuDzRNZ6uY2NbciGGTXWTTUC8A3cgEUVBCWjEsp5+
         ax/MNt7OQLr6TLbyo7ygkqMtkVPJP3hHqC2aqLim+UtjwCXI6UiCh73mW6VR96B9M106
         uZEsmlHd8IrKz7pI4MLTLjeB2gNTj5Wkojs8AMx7nauCR4l+qInHdVs5OxfMbog6/XVo
         s4CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QLc1ftX5OsWz0V6zR4PQjy/PkkgZtUQA2hgoaGemO/Q=;
        b=oYNNgqwvi9xWcijYXxKa3rfrZ8T2AaBUH+dddCXoqQqV/n5LiLhOd35gxdGdpQqYfb
         uGmoTb0MpTXIRERMySTVRvSE7xx5cJBuNLR5ErJ6LbFeqZshGXdhD1g1rayd7ssxI7kW
         GV8mJjXOFVzNc5VB2OFrblPy26SolGLTpK6iGGxP5gXzRz/y6evTdYBfSA9dkadavHhw
         dKNiBOwmTTbxQTnG6ZHHTnAtvh4C5OoTSSE4UlOS5/wGEpkKpf4Yz6EOPWFujS99R3Cu
         MjkC7vLStLI98rYplrNq5q9cueKcbdbycrtEMRTxcNgz7OJsscWKaKtp4oYZcbTreNSy
         Mfvg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530AuWoBqk76iNqcUXhGUFcXkWq/1KPTqLU7zf5JqTGprBbptCof
	vMeAJongrWTFh5dvn+6a0dc=
X-Google-Smtp-Source: ABdhPJzR/OB6z0dCijWHM+z6sQXtt8rQyBOeZfTFT8967IEgjiVbE9ZU2I+VXI3MIOl2DwXZWYnclQ==
X-Received: by 2002:a63:8c18:: with SMTP id m24mr1389810pgd.289.1592443093662;
        Wed, 17 Jun 2020 18:18:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:c70d:: with SMTP id o13ls1609796pjt.0.gmail; Wed, 17
 Jun 2020 18:18:13 -0700 (PDT)
X-Received: by 2002:a17:902:ba92:: with SMTP id k18mr1549532pls.298.1592443093208;
        Wed, 17 Jun 2020 18:18:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443093; cv=none;
        d=google.com; s=arc-20160816;
        b=phfJWAxhDmOjCv/CebI/jvNTINZqtDCE3LCuNcfcGNM5u6r++H3EeSNYHgi7dNZMLw
         uLL5fiZfsq5uSDOj8+OWy2wy3FO+obSFm1XzdhEslsZp/6lTHzMR923cz/RHL9e5pFDm
         y/oHXwxAnfs5ILBE2/ttcaBGOdxIvi8CBH1kOve1KeU0KsWtq9JQz8WUd9NoWGQmJyCg
         ako+kac24Jbdl/cl+DhBaUGYAIgAGKerDVeY5vKVCymrlqqv4N8MNbs8AcDj7b4UhHt4
         G4FnDypy98Iea44ealCCiHnXPRsfzaJHqjDwpJRV6V+Ip+rBamaVQtKcSgxRsFj5HHP9
         PQtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d5PfEm+o6tGi55Xor7zze5HQvYUTTvSi2qTX1hjpRWA=;
        b=kruF0Ch16P0AQQP38tA14eOmFiPnFew0j0mfPB7+3YgMjZfWupQmmFxOAwiw60bKVt
         lBsE6gssu/qXBP4MvoCDmEYLY0f7+9kHJeCN0Nllewdgf1RN6vHIvltg6YqcIHYg7krn
         7jbp2ME0WXuDzs4hyG6ZZnwfSpd0GJA0lVd1ECHmlKh2I1rcSS5hfAfeNqaALfnB6y88
         9q/DrNMnzE3Zc23QjbBJSXTCvPrk2JaLeg66iYATffA/DhIZ4BzdELZ/KkKyhFl5ZpYb
         zI2f4nU6f8A0v0i/X8XT9r4L9Gtqi6idIpUKAdG8VbG/mXeQMZz60v3D754l7nWT1+4d
         KRVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FE14Dspw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t23si69202plr.4.2020.06.17.18.18.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:18:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2602821D79;
	Thu, 18 Jun 2020 01:18:12 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 073/266] NTB: Fix the default port and peer numbers for legacy drivers
Date: Wed, 17 Jun 2020 21:13:18 -0400
Message-Id: <20200618011631.604574-73-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FE14Dspw;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618011631.604574-73-sashal%40kernel.org.
