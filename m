Return-Path: <linux-ntb+bncBC5JXFXXVEGRBB6X6KEQMGQEYGJTH6I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 611844076F9
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 15:13:44 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id u7-20020a632347000000b0026722cd9defsf3756765pgm.7
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 06:13:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631366023; cv=pass;
        d=google.com; s=arc-20160816;
        b=agrMArV28iyUwJ8aik1GVXgewMBQWJV0hwTNXUhHzn8MruSwe19QZV79lF36vColts
         jPT/T6ztV4JIFIJ0MAydK36g7wYQ8w334OVMLIJ/3oPFpFP+SD66rIuXjliiDLQ4r1Gf
         94E5QJNOw3NvfYgWcUmJI9lrKOccEV46S4WPnN/MEbHxjXSTVwwxF7zHLk8VOZ+ulmvx
         cG1BG0q7V338uxF5DRngPyev2Z3W+S1SbOpcYnqTIQJsFDiP15tjqNRoEFLQlA8C9SZM
         la6CG9ud3JlwvnDgq4Fx7ssjvivt6bjBb1EFAN+hfkUlRqCAqeSWQBGzfhpZg36PSrdz
         A8xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aHWmXoywfEgFvSkDLS31dME3HUaEJJp3rMPK9KqJZKQ=;
        b=Eij9sO4IlApLdrZ6HBRUWloGzyLLRmjBpySJr3e5PD6vZuAB4D9l+utuguSAagyQ6e
         0eOIIrYr/Epc3CUGt7McL1FrY2n2Pp4XJJlcJVVNUbVaM1sRWIMJ0CbP44lfrQA6sLYr
         NgqlDw3JN9qzGnbkZF04LGFEwzRQbx9wiVGzO1PC62WmJTwNdzxWdZ5E5TZSNJ8nAy8k
         Fieaw7OyRCsxtIocX7X/4BXZ3rW8Iv2WTe8k3a3YOjTLCSQ15oXX8gzBHcgpLxrc8Xtz
         UQ+QmV+P7uCwMMZ6Rj0z6fCPCMx9Zef6WcFEt9jqDvoPzH6EUudKkKQZEljp6gpOXVDf
         uaAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="DxfvXT/O";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aHWmXoywfEgFvSkDLS31dME3HUaEJJp3rMPK9KqJZKQ=;
        b=I4TrmvVHihTbJIr3imNAXkg+wPBfsvzXzYOF+YEyG7xyYt/Hz59cF4u2eQZwpS9aZ2
         lVz2PksiWMciTHR1XoN1OrHZDaMPvALT5ZGEgpZCPpDn9EjnMSMJd2arrwY5UlnrLLX+
         2SmiuwMnSgvfHYBSXVI7SWbcNOn+/nQsJsyRrHtxwpaB6WOVsUydyr5JPxS5G33pdbI1
         JNzCK3olImqxMHmbPlgBwP9HXP/CskP0BwXSihMhg89clW+ygXRfoLqgxo/A8zpQ1e7l
         5TnJ9OIar4QzKT1CbyC6Z7UcNP7Wu3BeBJLd6B04QSfeW5ZR77Nsc/U5iBuUd2HwGb35
         GkuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aHWmXoywfEgFvSkDLS31dME3HUaEJJp3rMPK9KqJZKQ=;
        b=DjnQi9RsMin5KMb6VsNi2ISkxW/PBwdQ4rd/xOQZp+S9dn2WRO42+kWubZpLxBvTmF
         RVe+N95t2HSSCOpD8/pZMxmGk2cae3joVc+utmNabe2FK0kbxWOV4AupoJRH0NJOHWdb
         6Emweqfp1WIxVIZL43nvLc3uIb7hkVTv+VPvlPdzwou0JCsi+zK+4Vph25Fj8ShnSx8m
         9YLac3OHHfwxfCu748N3R8fJLFxoqX2a13CmuhtqO1bX+e3xMUEj/Tf0oCrk4hkGXnZQ
         r2sx8dfnQHQO/YI1Qj8v2IIPI49yt7ccryyiFhh7zc7Pvh+275Hsdnr+Zs2nruiDm/Cr
         cECQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531dP9PjXRzP4GL2XRGn5V+nANmPtzbANxQ1QS/aSfcrMkJvAcgL
	VKDCWXWfAZsap/gb1ObnJco=
X-Google-Smtp-Source: ABdhPJyVZK+oq6PbYj8q1X6bnDiI9kXbVrdKzO2MbOzCkSwqC/8RZntMsDMXVYEgUNab6hZm4HptyQ==
X-Received: by 2002:a17:90a:5b0d:: with SMTP id o13mr2970766pji.117.1631366023127;
        Sat, 11 Sep 2021 06:13:43 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:ed83:: with SMTP id e3ls739055plj.2.gmail; Sat, 11
 Sep 2021 06:13:42 -0700 (PDT)
X-Received: by 2002:a17:90b:351:: with SMTP id fh17mr2879531pjb.237.1631366022561;
        Sat, 11 Sep 2021 06:13:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631366022; cv=none;
        d=google.com; s=arc-20160816;
        b=h7DoCJwLR7tQojK5Gv4gVZtOEwaNQqvq1FGlfh1YAI9TuncFYVcyDwDqeHCi7nf8XU
         MFpZLUmY6L30xJ2dluUkRYSH0qe6xTqWx98vYOLnVM9DaRf46i3M53HgFCUosSRv0QLh
         jBpmPdshVBFuw8ah5t7iovPRwhy2W15c16whLrrIEtKt2YfbesPcCAYdRzsII3EarhiJ
         QCXhgHeFjRTDHmKaNfGrIfy75eLxh2AlWsh60t4NuLHjow/tFT6JF7cIQNtwFZXZi7kV
         gKMnHFuKnr5h4DwsG7VffN5DRDWlW/VP6ZLWI0aRT2qNEk5LrB+qpC3KPvBWwfaC1wix
         jLJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mzFjWi4UwZIvNo9XY3++yXPjx/0mnps15J8Mx8+sBw4=;
        b=RldEaP2aNuP1M3Hx6p2XvgdQkDedhc8qfozvW9KetTPpavt0w8ZEXpXnpJxShH8W8f
         zPunku3x25DR1LUu0yAtJwd15f64AgydToaOP3GIOuMGC4ElyKb/E2EpO2bRMuBoCRvX
         NfTV64xIXLNLJCqz/ySMxEoXr60c6uRBobN5+lVT6AxSDPTnTVmqnzEB6tEMUqkLrKd8
         RyL4VGdMUdJEImabUbPWakIadQ8Gv4niZA6b7kE5enxRVlyhoxeunFg8y5CcA4CiPA6/
         qDsN3KRqTgWBJtJgbh78bRtaAcU6ux+MrDKs5jnNRhmeJTI0UIGJg2n2nr1I+GrvZ4mu
         53Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="DxfvXT/O";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o5si140795pgv.1.2021.09.11.06.13.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 06:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7618661355;
	Sat, 11 Sep 2021 13:13:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 23/25] NTB: Fix an error code in ntb_msit_probe()
Date: Sat, 11 Sep 2021 09:13:10 -0400
Message-Id: <20210911131312.285225-23-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210911131312.285225-1-sashal@kernel.org>
References: <20210911131312.285225-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="DxfvXT/O";       spf=pass
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

From: Yang Li <yang.lee@linux.alibaba.com>

[ Upstream commit 319f83ac98d7afaabab84ce5281a819a358b9895 ]

When the value of nm->isr_ctx is false, the value of ret is 0.
So, we set ret to -ENOMEM to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_msi_test.c:373 ntb_msit_probe() warn: missing
error code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_msi_test.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
index 7095ecd6223a..4e18e08776c9 100644
--- a/drivers/ntb/test/ntb_msi_test.c
+++ b/drivers/ntb/test/ntb_msi_test.c
@@ -369,8 +369,10 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
 	if (ret)
 		goto remove_dbgfs;
 
-	if (!nm->isr_ctx)
+	if (!nm->isr_ctx) {
+		ret = -ENOMEM;
 		goto remove_dbgfs;
+	}
 
 	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210911131312.285225-23-sashal%40kernel.org.
