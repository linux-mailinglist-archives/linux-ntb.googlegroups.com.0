Return-Path: <linux-ntb+bncBDPYNU65Q4NRBDWRU6HQMGQEBSUZLKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 719A249567E
	for <lists+linux-ntb@lfdr.de>; Thu, 20 Jan 2022 23:56:15 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id z2-20020a05600c220200b0034d2eb95f27sf4974019wml.1
        for <lists+linux-ntb@lfdr.de>; Thu, 20 Jan 2022 14:56:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1642719375; cv=pass;
        d=google.com; s=arc-20160816;
        b=NmdewVWFXvLGiWeDZvHTqeXhqqN4Rh/PqDvoTWoVmxCI3ftH7FlK8BLXXAlQ9CwNr6
         vWdGmemVsEaqn3z/CagsQgn4T2vtu03gYjiv8n8mN3WkXkWBd+uRm6jf6oVd047TNg6u
         mwhlcp5WAoDi49RbTYJarmATaijjymJise/xV7Kyli2FfgX8YH+W4hb6ndZ+YW3AgXmc
         nRuP0soIZ+EQjHdrWvE4w7pvkIllzTl+ELOM/Kh1P3KuYJrHUZ8L75n0DP16HSkFhVVg
         1xTPLso7RnUBe/luBjwrXPZthSruZiWfFncaXldmJ5H2Aav196lAbAVMj9AxyplMohEW
         bqiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=el/hh3J3ez5MYnlsWJF67CUP0rPBl6GoUh7m7CY2FtU=;
        b=KWKsURbJm5j/Ry5gQBPGy0CRlfXvL93GcqWcXLCABs1Q3l61xEbUVocJTfrUAKlK48
         rAdGIK8iOjRxwCChiwOGQvM0aisTCjtvYkHBFfJ+/wnDxwK7t0J6RiVYpBZFoUmdYya+
         g0LubNA0NsEuUij/qC0AiCriju34lKs8+yt/+DKMo4iOTZligRTgU1aFlqTG4oicqj8/
         F+DRC2zsyWPYnrsXa3SEN0IdK+VURdMPw8CPiCWF1Ir2N8HyV+1b+rBGsRvAtVzmcA6W
         QTuL6f2S8dJ5ibNKjOzmiCvv1Fe5/gYMJMUPvGnI3G4UArtD4DHcKbqGptVmAfDAI1L4
         ntXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fNnxkcmY;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=el/hh3J3ez5MYnlsWJF67CUP0rPBl6GoUh7m7CY2FtU=;
        b=WPDxOkZ5BQnHJcTzVdQybltYfUp1kZmq4lfP9KxBVzmkGijIU3LY93QgNyXw0Sh0FI
         0pqulQHScWQjKlmdtksmw9oVFJjkgX7fIvArY55fUCmKueKOJFgOWSZkqPSiCUU1pFO1
         xolnvHnWuHARRd/chpqDzKpZgBhEqQ0vbKOVQtV2VLrak6bvRk52WvvlqbT91JTRrETT
         XJzF0OIfeGSjBqsDyZ1L+KQhh28nwpZsqaBKNMjdzIynbyoAoAhaPPC1H12ZTHWdleMt
         JCkk8ymLzmtLWLUX+Hs1n7bkYnt6d0rQ6sV22Gxri5a6QRdI0QwxXX4vu3K5KZglU7bt
         FDvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=el/hh3J3ez5MYnlsWJF67CUP0rPBl6GoUh7m7CY2FtU=;
        b=krNTxbbxBc1CHK9XHpJf6W1P0FcD2LPh95TOg828vzz/uhFXS5+bpRoyVQPchowjlr
         kkmBvNLgRH0TUNolQii8UWDj01fu5YnGGpD20pKBmMCNQxuyJtXIFSMlepWrXYP3fsai
         n66wEktlBtT+s/wWfwi7yHQJguoY5cDeYk9bhB6qkcxcusqkuX31iB9vI3NfSq+Id1Wl
         RbxO+ugGYSMQbI0/UWMvTbrZGRkvE4rB2wlKOTU11BnO0rYSSWK+oIMmW6iEABr4z4lW
         3j3gMMG6LA9m+QVuTLC9QsYHwLuHzPuwczUI69ZOEN5mINKPZbU64RAf3cwuI/AvOMAU
         1Bmw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530nYYUrcmsZO87Th9C25E75za7BIGdS/el645E1AxqHE+5HyGHP
	ShJtY96pYVGj4HKzM44TSTo=
X-Google-Smtp-Source: ABdhPJw5mx97+4RLHUNg10Xz+ezyS71q9JN9/3CRuL/oG51RdF93EJ6V/9jrN5Poso9129pQEjkZ/A==
X-Received: by 2002:a7b:cd13:: with SMTP id f19mr1070284wmj.50.1642719375040;
        Thu, 20 Jan 2022 14:56:15 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:e390:: with SMTP id e16ls9051wrm.0.gmail; Thu, 20 Jan
 2022 14:56:14 -0800 (PST)
X-Received: by 2002:adf:fec7:: with SMTP id q7mr1108786wrs.85.1642719374091;
        Thu, 20 Jan 2022 14:56:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1642719374; cv=none;
        d=google.com; s=arc-20160816;
        b=C7sRrQiplJ5w7Scr+Q75cnoIFd+yUIAjAJQY6q8XXLUbdcAbApIPgrp+34P1VoZo/t
         9AU17xc8lOlu3ZS0Yu33QdZtOX7vDADsxPvRo8/4pCdPhexdaIpJCTrVNp+ANPV35hdV
         +Qig9GcwOZTlOCW+XEHzR749MxdIyr2ehsXGGX+XdVsumdROxHVqDxSFIgl/9PQjChn/
         CFOYZV3eyNXDXlCePYtWL5ndC/ibnoK5bpiERTnf77oCCbP6SVkeqakP+DS/fPp4BmCP
         5DKSJ90TSEws4b2KbKFYJRL7ka8BGBPNo8UfKFl4gfVcn9OduMd6aDWNl2/88mK6eWNH
         02zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=+SDffum+VNo/BRo1ocBN1ud4ZxfBtjG3NM7svvBtPjk=;
        b=v6A8tIqLUJURd5HMtH+xkJrWT43+mjDXHAzJY0QulwTcZhkYI8wbWpI7OXWvtVCCr4
         E9VoXgjlsCYhqMm0JwJSnpa5YrkeVSmCfyz3Szuli3bN/507IcNr1ytFt6+gy0kTSzw5
         JNa2khuR4qycYmSyGJ5LArQt8hHW9/4raCneFZGgzRLyHPb02enqnsCokZu0Y7sxVxTz
         OW51PODAH8jWPDkEPUyHy1eIluYsi/iOpLKwKIYw871R0lRE/68tHr3E6wgvAbawXjD6
         gZ6cKVy5ctW/E9Upqdv9O5rNVfYs337gMFAQUWnVE537n4akNlY8liYgrTKyLKanKkyk
         SWSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fNnxkcmY;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id s10si147500wrt.2.2022.01.20.14.56.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Jan 2022 14:56:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DD8736190C;
	Thu, 20 Jan 2022 22:56:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 031DAC340E0;
	Thu, 20 Jan 2022 22:56:10 +0000 (UTC)
Date: Thu, 20 Jan 2022 17:02:47 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-hardening@vger.kernel.org
Subject: [PATCH][next] NTB/msi: Use struct_size() helper in devm_kzalloc()
Message-ID: <20220120230247.GA40182@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fNnxkcmY;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 2604:1380:4641:c500::1
 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
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

Make use of the struct_size() helper instead of an open-coded version,
in order to avoid any potential type mistakes or integer overflows that,
in the worst scenario, could lead to heap overflows.

Also, address the following sparse warnings:
drivers/ntb/msi.c:46:23: warning: using sizeof on a flexible structure

Link: https://github.com/KSPP/linux/issues/174
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/ntb/msi.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/msi.c b/drivers/ntb/msi.c
index dd683cb58d09..6295e55ef85e 100644
--- a/drivers/ntb/msi.c
+++ b/drivers/ntb/msi.c
@@ -33,7 +33,6 @@ int ntb_msi_init(struct ntb_dev *ntb,
 {
 	phys_addr_t mw_phys_addr;
 	resource_size_t mw_size;
-	size_t struct_size;
 	int peer_widx;
 	int peers;
 	int ret;
@@ -43,9 +42,8 @@ int ntb_msi_init(struct ntb_dev *ntb,
 	if (peers <= 0)
 		return -EINVAL;
 
-	struct_size = sizeof(*ntb->msi) + sizeof(*ntb->msi->peer_mws) * peers;
-
-	ntb->msi = devm_kzalloc(&ntb->dev, struct_size, GFP_KERNEL);
+	ntb->msi = devm_kzalloc(&ntb->dev, struct_size(ntb->msi, peer_mws, peers),
+				GFP_KERNEL);
 	if (!ntb->msi)
 		return -ENOMEM;
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20220120230247.GA40182%40embeddedor.
