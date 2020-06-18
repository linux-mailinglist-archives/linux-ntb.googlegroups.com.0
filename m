Return-Path: <linux-ntb+bncBDTZTRGMXIFBBJEDVP3QKGQERIYTODQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id F39DC1FDCB4
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:21:42 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id t18sf3294692qke.8
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:21:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443302; cv=pass;
        d=google.com; s=arc-20160816;
        b=FP+9BGLa5hDq/DJzjj0j0TjMtyiELuRl+vs7djIVN5nLafcWsauxt6JlGQW9vj53XA
         jgCqq3wEYAhUuhmPSyQuLjzXv3OmQgGMM30m2OvkDNK2nbsRANmT2Xm8WrxjOAQe/z62
         kd0KGogc4cvHMKbrgN/i1zxdF6SZjw6LlPIm8AWg8q0FzLXh0HWmM4PEDs2jPQHHrmXW
         IoxHkNbUrspdC+Nh7gYHWEJPvfmnf5vg5L4Yrpsh98msIpY4l3xD3asHNuaFr1JbmIev
         g3PnT0yFSARJCqksK1pER3rN1GOQ5ZMJMtJnP0J2ENOyeV/G9KA7yReoa9TsYIb09GGp
         qyzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XtlM8bzSD35N2LC2yvRR7I7wpcsu/i2sxqCwh/2vTyI=;
        b=MRFQlv7APuwF58vzBpkLEKJLhC+vosLB88nkU7VawAHlmyh0d7FcdEEqXonEcLuWg3
         P3486MtyAxZ/kQGmuWUZPvRs6QaNaDD5FoD1T2hle3PN82vxcZE/klW2RLXiV98EoBso
         RzfKfvD/eUqKj2hC61auYI6Iwy3/CyJiwdeHtxigHuYDgxk3zWe6mKC12mATh2pydudM
         okAhX5Grsu7sNm36g+CbZk1uG42Uwqa5Y9PlX90opAlNto4sxR30CkYbmZAayXz5zlAH
         VPMmb7bJKAlHfGsHpdDOX8AxxKeVxJUaeWz2ddWdQNYy+M6HmP8xcFOOk+vyaRVqOcx+
         s/kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=b22rF2QT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XtlM8bzSD35N2LC2yvRR7I7wpcsu/i2sxqCwh/2vTyI=;
        b=HAaNFYsLjQ8mtaOlElYnbQaq0swYaY1AcXXPHGMS/DmWIh8V46oNnkZlzpwqEmlboa
         KWhA8uOWVVXdHNN6U6IPeuxMJhnnJn10LpiLMufWRLoXlV/RTMugHOwTZskDOs5AbisL
         36vWtMfSLsLmIUXBbvFh+85TIwVCChMa4DLp3848PhKPL8x9j7PUf9Ubxb8QMA0AXR/c
         kYbDr7uUN/lN0nMzLoahGZofwK1A/5EStnLDlt2caZy2C+wIlWuZug/OIi9I9kwpjyUR
         af9lAXLu14GYgfNt2p6/safEJQj6qO2TEN/tmNIGniCxLYQU8kc19ko7Z7DymK8yiiy6
         9Fww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XtlM8bzSD35N2LC2yvRR7I7wpcsu/i2sxqCwh/2vTyI=;
        b=K+C13BGv3WPIcMm94yq/kBVulUEuINk5BtLGvmPgfqVB3jk9VWc1XtYfEZGp0YC6YS
         BapkcU9Q+gyRjh7qwrL8iViE9hAf7nUNNpSwhmJLplDTKksdOA6lv7F7LWtiLMSrycTz
         wipd1v35yrLtmp58pasqKcUC4afnACdR3CCVCcUmd8lNDBuWCEP3f4K7Q8IteK4K1JWq
         lMs2FRGeptJ6KhJHTVKwrHaG8n/o3cJHQ+yvUYz4Btko73Ms4p45ZK5CcoMrhzqrXR05
         VJGyCDBokcymnHWVmVgM49hK2miSN6O3VRlGpL8T5cTU4nUrmYBIq8xAWUlJq9pIpf3C
         9iRQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530PjdpVyWJtQhq6feRpSgW1vNSGfWTpq32LzIQPkGKD9aDY9jnY
	MUjqv39t2daICU5F1qOt3mU=
X-Google-Smtp-Source: ABdhPJwPtqGralPD1ZpP0yuZg9e4+SUZzBWNNRLzoIH8tm3rIG3aJYqNNWyx9A9LQVWK06HIkc2CQw==
X-Received: by 2002:a05:6214:134f:: with SMTP id b15mr1419493qvw.208.1592443301020;
        Wed, 17 Jun 2020 18:21:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:ec0d:: with SMTP id y13ls917985qvo.8.gmail; Wed, 17 Jun
 2020 18:21:40 -0700 (PDT)
X-Received: by 2002:a0c:b346:: with SMTP id a6mr1502419qvf.142.1592443300771;
        Wed, 17 Jun 2020 18:21:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443300; cv=none;
        d=google.com; s=arc-20160816;
        b=HJdEMW6ZJn74MfuqGFRZdfThFt7IDiYHEJ3HINckxnKTPEj9I7AD+hjBXKJIjPG8TU
         V+rmbuSgPSlW5zbBI57wo4nWgp9e7Dn/ogwvRUonOJ6SVjsMxZbSXyxlFKkxnOiZJ7Gk
         y5+tJVHN1csYG5sUhujSoyTXXw4/mrcdFqjlwc8ylZGr3Qg0m3AumabpePPLX3co9f9G
         BQPMAev75qFupb/HjjgFKWJ4i8lpPxNbBjRGjJ0tIK84dIdA1eEB0s5Fa3varOD7tkl1
         ZdT0QPpsxlu6PV+EjQXpuh7wPCNbKmUXP9VjfP3S+t8M11zOqtJfcaTJrFyknsXhnBuh
         1+bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hMYCx6cxrOuVNy+2JSh0vxrd+jQHhYQ9Iz9K20Ca4U4=;
        b=jalham0bjkM1nfyuKbpNwluS2g21xtshuCrdnm79ldNJreHEAuCdV8HdCwHrxA7a/Z
         7W3r6/tf/ehnZqtCl5gu6ssuK3xxp9ROuCaLEpd5x2ojsvtSy2uPoc6/qCk/qozvR0Lz
         OTROMAMcLkr7csvNuUrvuo6yAEfflqCpJt0Vqr6H+8WiainzCBcHhnJFmd08y0GASUue
         fjDDvvws/rmxXKOTf+qHT0lbQy1hvHCKWasKS19DwSnZ0pHDx/hlD0xSEKgUdLNfw0CW
         AW6fBmWCn1Sk2sVlN7YVnBnixIUloXP60tYNF8C81nwplwqSjf+H3gAKKx7QdzkxFXe5
         /jiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=b22rF2QT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z202si48209qka.6.2020.06.17.18.21.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:21:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0439E20FC3;
	Thu, 18 Jun 2020 01:21:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 239/266] NTB: ntb_tool: reading the link file should not end in a NULL byte
Date: Wed, 17 Jun 2020 21:16:04 -0400
Message-Id: <20200618011631.604574-239-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=b22rF2QT;       spf=pass
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

[ Upstream commit 912e12813dd03c602e4922fc34709ec4d4380cf0 ]

When running ntb_test this warning is issued:

./ntb_test.sh: line 200: warning: command substitution: ignored null
byte in input

This is caused by the kernel returning one more byte than is necessary
when reading the link file.

Reduce the number of bytes read back to 2 as it was before the
commit that regressed this.

Fixes: 7f46c8b3a552 ("NTB: ntb_tool: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Allen Hubbe <allenbh@gmail.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_tool.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index 025747c1568e..311d6ab8d016 100644
--- a/drivers/ntb/test/ntb_tool.c
+++ b/drivers/ntb/test/ntb_tool.c
@@ -504,7 +504,7 @@ static ssize_t tool_peer_link_read(struct file *filep, char __user *ubuf,
 	buf[1] = '\n';
 	buf[2] = '\0';
 
-	return simple_read_from_buffer(ubuf, size, offp, buf, 3);
+	return simple_read_from_buffer(ubuf, size, offp, buf, 2);
 }
 
 static TOOL_FOPS_RDWR(tool_peer_link_fops,
@@ -1690,4 +1690,3 @@ static void __exit tool_exit(void)
 	debugfs_remove_recursive(tool_dbgfs_topdir);
 }
 module_exit(tool_exit);
-
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618011631.604574-239-sashal%40kernel.org.
