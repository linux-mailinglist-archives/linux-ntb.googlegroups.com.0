Return-Path: <linux-ntb+bncBDXYVT6AR4MRBWFDWX3AKGQESV2WHBQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6941E28D2
	for <lists+linux-ntb@lfdr.de>; Tue, 26 May 2020 19:28:58 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id p21sf17340100pfn.14
        for <lists+linux-ntb@lfdr.de>; Tue, 26 May 2020 10:28:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590514137; cv=pass;
        d=google.com; s=arc-20160816;
        b=DU8CMA0i76wR8E8ap8siOQKCSQG72aFYW6/i6Mkkt1IWFOFCz7QOtH0o7qe2HovbCi
         xiBJ5er4D+8H03LYTgUGY+V66Ey4THpBvsT2k9B4/pfyPudHhyfGgEwF0clJo0xhsrN2
         Nui6RUvUndz84V/bhXUsz0028R14+BDeRA8w83RLJh5wskjSA7ugLPJdQSFezC75YSrs
         IHNZA8OxqU+g0hhHUoxL7+St4y1CoLzey1fofswWHEZ9wXV6PsV4pNJogyiiU2ydKK/B
         4w1WEwQ0KcE8gStKrlPbbk7sd6Pq+SQZUtt5xqweUmBAyZiFWurUAb7wvFkR6DjC8Yc3
         DHwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :date:cc:to:from:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=ie3rzHwgu73QaIARQIg1+pqOyfv1asNLbL4HeHnRv78=;
        b=mKnDMb0j8iCyBxF3eyGrJeE212pe7O5ISU/vXAPih3vithcicPbMQQQWz1ilfqTiS9
         fIdFahhAFVRZVnOBW4+s3WjcLNRFMSmPVxyQOFW9wrIu5OlzGEfitrFxLkQu4GCti12s
         wBSmuPOYWzllS9fqEgt0fZCVE1utJUaTkWOhRlaBO68VhcndcdYBVJpjRR47UlPgZmSF
         0VOiWXf0dwg9xJPsljvddbbYpEmN60qwZGuDQBaqHtjZ0TFiKHrIzAy8Q5bi+Dn62XYh
         CS9Sh9x7qppLGTI7OmYbB4NvEA1bxMsnsCd//J+JGzYk9gQ8xBX0QGicFUqO+no+MDSC
         aN2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:from:to:cc:date:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ie3rzHwgu73QaIARQIg1+pqOyfv1asNLbL4HeHnRv78=;
        b=aSxi//0S6rPoIaMLvjhMQSHePq5EJUNVQzBEPxDkediFeVTXmrFjD0ILT9jDbSzneu
         csloal5VKnU+rfdbdLyEj3609Wgy68mHqaLpCxjY3k7Pd7S9ANL7kFjMP/hutrcNPypY
         PlDcFNsmsWOy5rpyxKRkhwZLOFQCybotU+GZMBGftNZsbpXpXFNDvlrnRrJzRda26Kbu
         gorgOQD5nQHASrn3kLlQ3LLvhP9t2R6Qm+QDaCqCClkdMGeGx3P129YsPMWAkAfuBKnY
         vrs5g89B5BQHd9KcWKYv4HNL7mazgAfv2Up4uNzdsGTChchgMi9AjRzR1rC5PncNtQps
         8hBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:from:to
         :cc:date:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ie3rzHwgu73QaIARQIg1+pqOyfv1asNLbL4HeHnRv78=;
        b=EHGmW+lbCctQ53617jRKa69Ec1PPtluSdC5J85sdb2+j6P/C2DPMT6uNeR3rEdV6ky
         P3hHSqevwR/w3XB3aBbSLAzXlqT2ijZktwAyWce+nMrANG08+bnG/XTsDO9rjrEk902B
         infS3sp4SfXjXl1bkU+Xehjyac3kvxRYj7hDJl+qKffWrTXnXAEkr1w7qIxBNtrXHXKn
         5xuvbG5gOOm4lCHu7ehlJsTkjILmAeyHKzR8OJe3ddFwO95tNoaZkbJsjQSDd0bSo2AS
         AuKtugVSaU+HFOGb6rJ0cpQorbLywfSfc9qxCYzxmU91Km18LWU34Z02ogXjPZJU0mDD
         CDug==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532CU67qbdu9iPHdy4silHnTUF5pAh3L/5lfJye9KJ8SiJxc37Kj
	HT/csBUeYs/49zLoidzUZdY=
X-Google-Smtp-Source: ABdhPJxX3UhRoBgWlV9hIoraK1/d3ZYznGAqmIGSVzxBCrbB8yR9D1zZgC8s0S2ZxIcwQxUE8B841A==
X-Received: by 2002:a63:4d4e:: with SMTP id n14mr2066380pgl.93.1590514136804;
        Tue, 26 May 2020 10:28:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:7697:: with SMTP id r145ls1215531pfc.1.gmail; Tue, 26
 May 2020 10:28:56 -0700 (PDT)
X-Received: by 2002:a62:760f:: with SMTP id r15mr23010841pfc.236.1590514136428;
        Tue, 26 May 2020 10:28:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590514136; cv=none;
        d=google.com; s=arc-20160816;
        b=sB4FV3SIk8sPQKyk9ToHv6HxAKF01YJD0gDrfAHJN0mZGR3/SIlOLws90OaeCeRzOg
         kL4uKZzZFwc7jacDYRGGfHJ2Ndguw4584y/HZXrGDGYmLAHw8VBk/Q/EvH1g99H5ecWK
         XXQpCzhXgGwq04eYzggP2lI8iEcNNiIb2bvs+L57dYPovVDt3AXfgYYNshwaowhDPZGm
         v7CI9POzvY6xp1YoUVXj/cNpaWwFnJmQi0ciDnGUDBAmZxzhEpPlCtGA8eE+h33zVBI/
         whsmkAP3R9JWYZ/nNdZ0/EIWzduHwdqVSu0yWThZ6jAOiC2ea8zTdsC3iwLQ9EhsJmix
         btJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:ironport-sdr:ironport-sdr;
        bh=2vjOFtVqQ3s6HC1cAmcUWU4BMBj4Ap2JbqO4yCqIiaQ=;
        b=bLlKKpeMfA2lHlNP8Gq7HWTM1AKQdOtFQ65J4N8anYCTLK/O9zzyU/mKL9qx6/O5W1
         aCbjJauR3fPz/b8YFUY0d0C6yr49cZlqIdy6uelRKn88UoOCSyFyGx5fQoYkfCnRWJsM
         B5h+lTbsmxtgG1HMHRHEsc52MJBylWZyEGSjv5PBGL20uMicLe4K5C2ARZ04mSz22774
         wwDdXySI836pbwHx9s74PiaUd1U1WO70XaDVoJL79qkCB3JDJ9AMPA+woVjDfmS3Oks8
         LpjyDl+5o338Gb/bCYwO671GP+5sc9clsxLtSnXAX7VV/3p/Iprp9r7ipORuP4DZeIjk
         UDHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id m81si76698pfd.2.2020.05.26.10.28.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 10:28:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: WoSh9mwqNjrtbfUSNWkJd/g5Z5T2t9xYbobLp5JvGkvmvNkYHEuQ6ZKfFvoFwJKnU6q1vS3brK
 kG2gjn61TyOw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 May 2020 10:28:54 -0700
IronPort-SDR: lYr8P+JrES2ZEE9PIEDIlxq5YQkQHOayhB1LIf3VpHK5klCzDFJykziJAGMwY5w0DxvBd+6ut9
 RH6IzDYn9M8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; 
   d="scan'208";a="256522696"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by fmsmga008.fm.intel.com with ESMTP; 26 May 2020 10:28:54 -0700
Subject: [PATCH] ntb: intel: fix static declaration
From: Dave Jiang <dave.jiang@intel.com>
To: jdmason@kudzu.us
Cc: linux-ntb@googlegroups.com
Date: Tue, 26 May 2020 10:28:53 -0700
Message-ID: <159051413389.47606.2615869180413030098.stgit@djiang5-desk3.ch.intel.com>
User-Agent: StGit/unknown-version
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 192.55.52.93 as
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

intel_ntb4_link_disable() missing static declaration.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Dave Jiang <dave.jiang@intel.com>
---
 drivers/ntb/hw/intel/ntb_hw_gen4.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.c b/drivers/ntb/hw/intel/ntb_hw_gen4.c
index dcbd6d3cf7ae..af5c8feb2df8 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen4.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.c
@@ -498,7 +498,7 @@ static int intel_ntb4_link_enable(struct ntb_dev *ntb,
 	return 0;
 }
 
-int intel_ntb4_link_disable(struct ntb_dev *ntb)
+static int intel_ntb4_link_disable(struct ntb_dev *ntb)
 {
 	struct intel_ntb_dev *ndev;
 	u32 ntb_cntl;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/159051413389.47606.2615869180413030098.stgit%40djiang5-desk3.ch.intel.com.
