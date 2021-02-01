Return-Path: <linux-ntb+bncBDXYVT6AR4MRB6WQ4CAAMGQE7M5BG7I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3318130AC56
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 17:12:44 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id n4sf9856842plx.23
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 08:12:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612195962; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jb99Z7of6NKrwxuIj288Uo2J7cl6S8c7mP4YK7F8PhN59NCgno9LrD3DpuFX85g/qG
         nMU1lnVLlVEImzqJQA4A+HdyzGuwfNHYTitOB/a9yYBz5UovvHT21cwXzQva8sxO90AS
         szx7zyLxPRLdNlwAsSu82anQ0uvI+Nl0Yc9r5eyRtNE7/0vHVq6DFXh4TflD+85S6Jy3
         xKLf/u3QDpgjHs9YBwKiBOr7+ROFF+PbJMnOqSz15p9kpu5SeYKFfbyfk37wAdtQ2iRV
         0Zbh+WH6zQPGEryyD7S1BrWvT7oOmTS/C9KJTDZ2qOEBg9xDr4AznpXMbjhsJN/EhJ6P
         UShg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :date:cc:to:from:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=H8w059wBDbokqdra/qXuLYBvZwUZ7O+E6GfSRScnJ3k=;
        b=zaxK6ubkvq59CBCD4VJUdJrt4C2H1hRyb2zwfvYUZ6WLIBmhh8eN3UNhNw81UPHD67
         IkBRqiDbANOWghcqiZ1mNFgjhjaVJR1lejRkDbZIAb+TKHGByjH4RFWpVeGyOpoCXH5A
         tWNe63iNPiMadPRvqzu9ShnO+eIi97qvm6+xWk0VANXUInOFykV9DtoiJmjjJDGW2Yb2
         VYBAcTrZNbQ/3FVoKHRMpkNGDECfN2HL2M1UOFwq1VfGhVrZt3nmVVthRST7Qdn5Ndgl
         NTbGJVRnOnYA0BVi941seqBtMXaeax4AL0dO0U6/xRJrz+UcRXivB+Zlps7CKalUzY7r
         Ki+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:from:to:cc:date:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H8w059wBDbokqdra/qXuLYBvZwUZ7O+E6GfSRScnJ3k=;
        b=WXkB9TAUavCPZzdw0nHtOcJ/nL/yscRj39mc68X4sqgsqGyGD9zPG1AHNW47Ouips6
         BRlVlSwXSbKD8muN5C/Uppr8jEBfpZMjHAsb90OY+hszHyVUlDK/L2cxjYQp5yjQ+e1D
         DNzOzuKy/bf6+TqcwV2aeOQOmmucePR/56goBSLQgX9eoJI/PrOih02k98c/yNr0Xrh8
         3e8pGtFGUh98hq2rq3KmV1sffkKPdsOfo4icuANCzQid+aXyClfgpeANeg8DKNv3toEF
         YneDI23PWGiKFTXRsCsU1KNx/FQOKc+KLU8LrPu34SU133GgiUY9nIGkYdsBuNIGTgHX
         ++LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:from:to
         :cc:date:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H8w059wBDbokqdra/qXuLYBvZwUZ7O+E6GfSRScnJ3k=;
        b=jGYyZevYFgBp5RSOqpOokyAkOINpef5EZ7GnElZ62RkZ1b2BvRhvzWPR5KlS1TU7Kc
         BFrtGGUuIwkjNqx94oeysrHdXQtHGQmVprvCHGjmNM8/R+Hq1wLf9RdjeswmjhIQDJfD
         n38ltCTFG4Xs8RMEfTNqyZYO7NgQVDkmZwZF9AIE7BfgT6G0P+5vq+/A5djM0ybhiQCK
         RrYFoaaiG6UpEjQB7bIORJt1X7u0nHpd3u+Pdkuwlw2PLXyiQ3Geb+POh+rwdtDh5GjJ
         PsVf2EnSBS4o3noyZt2UR+eHeBI7GJOnvzuNEAdCCR4ru3sX/VMgQB+9PAm5oBa4YvSd
         0zqQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530shcSTfI3iWZLIt17OyVnOQG5sl+BIqaah8SNYmwg5bvUXunWw
	X3hTD1BgzK6OgeVscJASvhM=
X-Google-Smtp-Source: ABdhPJwYHGKipZqZcZqd/NOCWSHmPUyeFZLPwnA94h9Ck7/9L8+N2mOvZRhMh7PO5hOPH5iL348KVQ==
X-Received: by 2002:a63:1f18:: with SMTP id f24mr17853802pgf.133.1612195962727;
        Mon, 01 Feb 2021 08:12:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:e8c8:: with SMTP id v8ls8554916plg.1.gmail; Mon, 01
 Feb 2021 08:12:42 -0800 (PST)
X-Received: by 2002:a17:90b:e15:: with SMTP id ge21mr16956946pjb.185.1612195962234;
        Mon, 01 Feb 2021 08:12:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612195962; cv=none;
        d=google.com; s=arc-20160816;
        b=usFWJMe33uMXMyRWetdf/i1ATFYGGkgruKAYnqpLbbuI3NIJeBIsNbO8nfPr0elzqV
         QdvKGlEiIvBBRrBl4AXenss+6+pz/KiSYWvI/PWz2JPsByFs+6Mv+q1Q1SYLAIyi0IT/
         jochFsLfEfJ7FygWR/wHHWVy6V4v2SNhd53AR3UjWR5+pMZwVsst0DsBz7IkMXjOPFb1
         rpBtE35y2RaxEwQZ6x884sWPnjyoXkpv7wTmcqlz6NwmR4PQ6UX2WVEg/CT4nOiVutMt
         fehR55mT6ApSBgFSMFBk3gi1hew3AG0yHqo46YoWePm/ABPfu9Y0M5LbdcK1WFYx0YXV
         E0SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:ironport-sdr:ironport-sdr;
        bh=DJGMLLphETRtg5wDu7vGGu/SkAsK/I+kUWSBDletwoo=;
        b=Kl/hG7GKR/qxUF+nOdhFHVrM/Pe24y+46uhKjNwgY8En13Y5bXNjzGU2PRtH72Bd9/
         mAX4hPxxyCK3JqUgvcrxCExiRSsyW/uBu4n5+KquDtpVrM7KHd8pfNlSMZQkndEVqYI4
         /bMu+QFrbV7qFEyReyH8vmkEuihTs1z9kegjW/QlW4Shv7Ulp6LbJbpb1PzEPxeWTD2i
         UXtTmTHAEslgDSllgvAon3+WsI8+DdzumebOmA3gwkZ7BmDp7FK4bQ35bqcXqxsdDTLb
         OG2GzqLQf2wOAqZLcndiLiOH8mrw7E9bosqTh42J572rGzNHywU8Hd7Wr3Xdxis8v/xY
         Xl4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id v13si276986pjt.2.2021.02.01.08.12.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 08:12:42 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: V5KZV3aLuD0o3g8jSNg1IOIUhAHjtce9HrZdgRc3VLc0qTZ433SaTznZ55sVvSX5caeAPScW5v
 wa/iTeBSFOuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180785934"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; 
   d="scan'208";a="180785934"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Feb 2021 08:12:40 -0800
IronPort-SDR: ps3+Abwmj3rhU5CIno4F870jVd7BDbEs/nLe6uueF1KwfZN1hIxZR1gMuFPUM4hkSuxVqZUcmK
 UzMZc9/hQz7g==
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; 
   d="scan'208";a="369918439"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Feb 2021 08:12:40 -0800
Subject: [PATCH] ntb: intel: remove invalid email address in header comment
From: Dave Jiang <dave.jiang@intel.com>
To: jdmason@kudzu.us
Cc: linux-ntb@googlegroups.com
Date: Mon, 01 Feb 2021 09:12:39 -0700
Message-ID: <161219595972.2978237.5196893078187316626.stgit@djiang5-desk3.ch.intel.com>
User-Agent: StGit/0.23-29-ga622f1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Remove Jon's old email address.

Signed-off-by: Dave Jiang <dave.jiang@intel.com>
---
 drivers/ntb/hw/intel/ntb_hw_intel.h |    3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_intel.h b/drivers/ntb/hw/intel/ntb_hw_intel.h
index 05e2335c9596..b233d1c6ba2d 100644
--- a/drivers/ntb/hw/intel/ntb_hw_intel.h
+++ b/drivers/ntb/hw/intel/ntb_hw_intel.h
@@ -43,9 +43,6 @@
  *   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  * Intel PCIe NTB Linux driver
- *
- * Contact Information:
- * Jon Mason <jon.mason@intel.com>
  */
 
 #ifndef NTB_HW_INTEL_H


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/161219595972.2978237.5196893078187316626.stgit%40djiang5-desk3.ch.intel.com.
