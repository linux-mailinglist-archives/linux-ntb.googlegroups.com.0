Return-Path: <linux-ntb+bncBAABBNXHWP3QKGQEHTMLMSI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1088C20193D
	for <lists+linux-ntb@lfdr.de>; Fri, 19 Jun 2020 19:19:52 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id v8sf6754361plo.1
        for <lists+linux-ntb@lfdr.de>; Fri, 19 Jun 2020 10:19:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592587190; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLqSajLSNcwRxUa2tNzOWl8xPyjkak8iCjMsW3va9EUqaExnmIsJqELFlKaP8EpTJ7
         ripOSypkJpENUQSKAwB3Z8yWPpu6WaiDJnECNwpTLjesJimAiRpUwTIVf7p4EfoGJ+Aq
         OLvYHMBIKCen38l96QUOatHv4+Xo8g6KkOH3GHlZ17Gmz5jzDAb2IAf+qPSYNPIDHwcw
         PFGzSSfDK/o9ac0LQYjPX8XNUGzHfItMjM0s6lrOZxpYiutUJmUEcRKOpw28oR3rP79G
         Shr84pXXfGpKawFoVoHvnYuXXton+lfmhnGWt7yqyTyhQkCbgh+JBW4SQmEaIWyr4bKq
         lgug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yhFWax0JtfmJWTamfSa7VjKGkpZhaYByGCGvjbUCFww=;
        b=KHejaAYnklnytjLnTcA/RCWNV8ISbNag3lJm/RIZAlKVjWGmTaYH3g1b2xXmf9s+QO
         ivgvCzEVgX8EIXwdqoCN0vcdfqMuHV/QlfNpga7bQ20lt2Ge5y9LVdZ//ZWfIEP4rxHj
         G+vIUeglz3BiwOkiE5npmIzU7cPhoV6AOdVtVOhAphmvyopLYX8G+EAuS8z7uCqzJkPi
         YmPQ0tzfWNbk7NRPNj8lUkZWyjAPl0COMZZt6PnfF3l/iph8seRYwFP4IvjpbzP3EGDT
         1lq6KIFVJjrG7gERMPg+xh82+85e8hjSKmUjKtlxVj9ws9XuwKueksdDClueOStQjmxh
         cAWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GQsI0Q9w;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yhFWax0JtfmJWTamfSa7VjKGkpZhaYByGCGvjbUCFww=;
        b=mkFdRoUwYgvcEKd++DzCDALQIR4p2B2CW7NaIC0CKBfmY8myjDxkYTOj4Sppv10Ico
         pEdZnRDl7at+FlLbCf80mVynxIlQYQg8BXvpWMw6QTxKtwoTOJDYN/8DiZShgfw0d1a6
         htMLiEN3Ijuv1kK3h/QiM4/l5PU1/3FX5Iu2gJYHKyw7Z6DpM8OlUNBnJz2X32yZFg6A
         h6aO0br7fOXYyO4W6qDGnEl5RhsEZWs22oz0m0/V6Bc//Hw3tdChIN0FyJ1DckPwjBOd
         Of0i1MI1Ov41onG9qf+dVgMxlxGZBX3pdyeyqqbKBSvpMppHLxhibxbaHkvYCKwMiffG
         MB2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yhFWax0JtfmJWTamfSa7VjKGkpZhaYByGCGvjbUCFww=;
        b=KP4ceW+xfzdtKIAyDpt9dI3IHjilIltOvxCLWDYeemdwvXIuTSieOzLk8ACA5XHeOx
         Foc1dEev9FkqyIOJeEwbBU6l/og08gWtivbsfVTtNieNh+HyFS0xvpvQxqulS080LWbm
         oLg7S+ecr/XynTiDNj4n3PH/64XL1Xs/IVpaqYTUDNY/c3FAnlMU8elTcnJ24gHiTkst
         V76UCY9QSMXjUYvfjnCfZh5Xj5SGfwKOyFTDJzx7/Q9edlmoe2pF/2/gPfXS1P7+y1Ko
         erIRi+xu+TIQM/6hUWw56JZKRpOJFwZ1tDU10PHVen9Z5brsjKE4z1W9ff+8oAWuXNaO
         t3zA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530ExZ7qtg7l/d7twv5RaXadGpCmvN68NeAvLePj8CXx7qj167kX
	VZXPiBFq25Pmdc0s8taegLs=
X-Google-Smtp-Source: ABdhPJw0zciYtaf9wkQOhpp8Rlsypi2Pzvj27lYEFb3BmBqr7xawNAzjZcMehPvrhriZYmDOu4zH8w==
X-Received: by 2002:a17:902:7d93:: with SMTP id a19mr9349523plm.100.1592587190630;
        Fri, 19 Jun 2020 10:19:50 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:8858:: with SMTP id l85ls3126968pfd.6.gmail; Fri, 19 Jun
 2020 10:19:50 -0700 (PDT)
X-Received: by 2002:a65:5949:: with SMTP id g9mr4046929pgu.220.1592587190366;
        Fri, 19 Jun 2020 10:19:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592587190; cv=none;
        d=google.com; s=arc-20160816;
        b=wRFbyDjTk4Y1YnfiSoNEXuVX6TDyk9pEWEPwro61+LBeqhWMcpwWLGg/sgcZI7jWpY
         bSVC0cSqaVLSPnTj2LbpvOTMaN3s4OVCTOYSCukNTBikg+5/qymSU5klW3o8jGr9+Pre
         xOzx4EbW0B7YYSMh6prl/Id+d0Q50yz9OpZpe5i+gkMduvpqhx7XtgCgZz36CFUSsKBB
         9qbMiBZwsgtxQBy4YqtEdwUCm59IJfxBxC5f8x8MvIgi6bbt70CgV2jQFHJVM+goiTNf
         fKCFIeu/VHr2O5iv1tEII2duOH5nnqPRwxRWYnDS5EznKt0PFo3oRBMIq/R3TH37o1aV
         fOBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=kdqbekPUkO7HrIhJl57BLyKHpQ01xnjhZe+3n7jEZPM=;
        b=XInjlkHd2hxvknmxncaAV9h17u5VgYFuNnMup28RittrmSu5OL2f33noGIXiqyRtCF
         YnO34nhHV8OHLog+vgKXNV4/ubzznFyOhKcV8u/w2NtCuXvSjhgMi14qLvcBS0crwV1R
         imU4fc7wAtD8Tszyg3DFRrR1JMneu9OhvP4JNwUeOdyRJnY7RWtLpX+ulNGLZRVT6sLF
         Lmz3U2jSTLckEB63PIYjHqnstEZ/bOTLbLeSklHIUHOhL0CC4bZ7nXMn7+sIGqHCLKI9
         o+xTRQMFmvVZFzH7SeTUsYqzgBIxtbr6xQ87qcyhy0B3duNw/YK7V5d5MFGbVIlMVi6b
         srCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GQsI0Q9w;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j23si44441pfr.0.2020.06.19.10.19.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jun 2020 10:19:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (unknown [189.207.59.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8C5A4214DB;
	Fri, 19 Jun 2020 17:19:49 +0000 (UTC)
Date: Fri, 19 Jun 2020 12:25:14 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: [PATCH][next] NTB: Use struct_size() helper in devm_kzalloc()
Message-ID: <20200619172514.GA1074@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GQsI0Q9w;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes. Also, remove unnecessary
variable _struct_size_.

This code was detected with the help of Coccinelle and, audited and
fixed manually.

Addresses-KSPP-ID: https://github.com/KSPP/linux/issues/83
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/ntb/test/ntb_msi_test.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
index 99d826ed9c34..7095ecd6223a 100644
--- a/drivers/ntb/test/ntb_msi_test.c
+++ b/drivers/ntb/test/ntb_msi_test.c
@@ -319,7 +319,6 @@ static void ntb_msit_remove_dbgfs(struct ntb_msit_ctx *nm)
 static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
 {
 	struct ntb_msit_ctx *nm;
-	size_t struct_size;
 	int peers;
 	int ret;
 
@@ -352,9 +351,7 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
 		return ret;
 	}
 
-	struct_size = sizeof(*nm) + sizeof(*nm->peers) * peers;
-
-	nm = devm_kzalloc(&ntb->dev, struct_size, GFP_KERNEL);
+	nm = devm_kzalloc(&ntb->dev, struct_size(nm, peers, peers), GFP_KERNEL);
 	if (!nm)
 		return -ENOMEM;
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200619172514.GA1074%40embeddedor.
