Return-Path: <linux-ntb+bncBDTZTRGMXIFBBOUAVP3QKGQE5BZN4WI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3C41FDBE8
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:15:39 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id j43sf2863176pje.0
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:15:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442938; cv=pass;
        d=google.com; s=arc-20160816;
        b=yXHFKRf12+VNKDOxZ3NDZLUSEhyksmUJJg+Q50V1Y4M6PmBmcT1E1tlzIk+djB80gi
         pSQ9RuFP/4HzTkzr87+RMHHET5mWKoctwCQzROR3YItdVlFWpjfxCytCDLe1G93+CplX
         OkE12ZSCgVXzH3Naxd91uSSZkOKO6NIKyYN5B3uJgiAUgbRgxi9JDG33lTKaP8pkKf2w
         C2Up5YruGDUvxitp5F/Kk5Sj3Ev2SmXBQ25OeUIsCYoWnyxKV8+3asZWilOzO/EULgD1
         C/0mQVL27r3h6+WD+Wrwt3UJvy699CaV67WGRuIgPWwkewOc/Eeo5dhYLV8+Ox8zT8X5
         +usA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4RI/WqqaMjdbLoInYepkiBrA56BlKHuGtOlIEt41czU=;
        b=0JKemidmDrslnhCKaVqM1wMlSXIA4y0WQRalHzHy/HjZaWFklamNy0Xf9VFih7kH90
         qCWo0jtjYAjw5X+Crdc3m7k3R+u/0HnDQsjA1LE05akamE1TJJIabVIggD2pvFWRjELN
         IyZ8nY+gGiqwHdqOhhDG3Yw86KiMs1U7Lxqlb7Rb4p5YkPk7EcO3hmk3nNH+ngO/JypH
         MNiKShRV1Euw8bSkidBz26l8N1e1BTRCFCVTpr3XX+6eP1YZKExXSJuZq9TILyLodLOA
         aMUMc244J0Ts6rdBNDi7ExniVDz261OCFo3s8oPgTie7RHJSsGu3rn9DEUaiokp5H6kh
         Dt0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="d/OBfTJK";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4RI/WqqaMjdbLoInYepkiBrA56BlKHuGtOlIEt41czU=;
        b=MlhPLkovaYG4e/HGCs12Bo+AAk/rJfbc7Yf1INsqHICDEpoe5ktg6i/Wv8yDj+IUlt
         aQAY5/WVRq0nmDpb3+BGoaRm0/0znX0VoC8jmc9JS3t8HIpkr236hXZPfVTCrJPqRuSr
         gtQkhvBnVbQbhqwTFvPkAcgd3/wuQLmkiWXT8b+hQuGzLhNNqhBQjlzhVkt79ZO5bSYH
         K08nY7eAugcyHp6fqVnmXJDcQ/eeF2UdYh5k1YXWJl9oYh+RpTOPOOx/Miot/jTgobq6
         xp7dTzmsHb5lN4iqp8iPKL169W/7W/2AaPmlUqNhMM9PKAFhZkvbjDhSByXGe3fOv2nV
         494Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4RI/WqqaMjdbLoInYepkiBrA56BlKHuGtOlIEt41czU=;
        b=lVPSzXpWtqSd6PkoV2VHE7ibEI+XiprZOk5n0iVVuTzSm5TmI2njNNp5aA+nUFyFLj
         697K80IZeLL3YJd5PeLcEZOKoJxgyjw/kakQy6JS7z6OpcWeHA80L60afqAuJsTecj6g
         XHjhhR/miKfOkbno0nSubyk8PgeEx7WgvJ/c8ddcyJLC6ABK+DhqSxr9L980Sn9yFEi4
         YCx61PvaI0rzO1e65uYXkzByfO06OVdZzYxh5CyEZ473Z34HiGZ7F3MOBs+rfEuZa+pU
         2Alf6aPdNhaYb0tGuK1GjHNr5aug7U2qXwaVeCRLf+CM6iV+PaiOPlEuGGA8pGfMwt/G
         DWnQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532vzxxHIPTv16T4t1iHOB2ABtpGpdlGSxlE5OmuZsOlnS7SQaVh
	+GSH75x0P0ZKrH9honIOcJE=
X-Google-Smtp-Source: ABdhPJxC9DKjNRIacwPRGZfaEsYbjIUvD5ufS+r2neT6jJ3mEaPTtPjF7dNWntOPoxe7kiF+d/Sm9g==
X-Received: by 2002:a63:7407:: with SMTP id p7mr1404075pgc.268.1592442938043;
        Wed, 17 Jun 2020 18:15:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:104a:: with SMTP id gq10ls1610237pjb.0.canary-gmail;
 Wed, 17 Jun 2020 18:15:37 -0700 (PDT)
X-Received: by 2002:a17:902:7608:: with SMTP id k8mr1614695pll.107.1592442937637;
        Wed, 17 Jun 2020 18:15:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442937; cv=none;
        d=google.com; s=arc-20160816;
        b=B9dtbn3GczZ0B2uBwpMC/qQ8QmWTfI2R6+79rcZiYLkBE3bOc19ASndIlEhmmyJsdU
         srT2YIqTvdvVsdfDnT00C0PcCe8fOjl7055xuXkOsFserzfGmXkiDAxy4+YLXRtFpCKI
         Fdt/l19I1c3FMHfejOqlXM/BuSdDlnWTCRt6RrgD3uSjBtBAHBZBQzyriKdguMTUfXdG
         3tiASV2RAzDgk87DM3ZYeOZ79OxtmWef7p5GlMcpIzDQZQFyMHSB8l4mSjuqe1nIJBt4
         AKGpLEgIiydleFgZ+3dOkTkmUaygQA6BfYAsSUrxRy7a7EUNalCX6mjpIgF3TQ53LA1S
         Q7ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zEr5q6NoAKQ+bu4s14DbfcslEKqDP+ePZ23L9oyaN2g=;
        b=gCwR0/V//rS9t9GUfkLmOJogGgt96Mk47AKBq3ebnTTOen3XxtNSciHHn6yQ0bPkVQ
         gsWKn+QIEtJLA/vBYqRwGqOdASg1FnG1kn9tCXFmyblgoomicX41TOFrQ2mXzcqX7Rms
         2aqQ6Hzd9H3IpeVH8eRx1wtDkA7QforMuhS1QXb9Q36rZVSW9AYBuZRvw0I7TY9un7Cg
         xTANxIHQa0vgHCGucAySVdGv3/+bbOQ4Ux3f8qcmDh5xQlI178Wh5UYwWWyTNHn5+Z3T
         LnBtUzlkIlumPyCuTMaaVNpIEowDdCUqfNJomuMLWw/9N4RFP/py+10z//aun1zyHKoI
         NTkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="d/OBfTJK";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t23si69004plr.4.2020.06.17.18.15.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:15:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 89A172088E;
	Thu, 18 Jun 2020 01:15:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 349/388] NTB: ntb_tool: reading the link file should not end in a NULL byte
Date: Wed, 17 Jun 2020 21:07:26 -0400
Message-Id: <20200618010805.600873-349-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="d/OBfTJK";       spf=pass
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
index 9eaeb221d980..b7bf3f863d79 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618010805.600873-349-sashal%40kernel.org.
