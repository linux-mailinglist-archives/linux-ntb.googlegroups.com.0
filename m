Return-Path: <linux-ntb+bncBDTZTRGMXIFBBEMFVP3QKGQETKEMYPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0352A1FDD40
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:25:39 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id b186sf3124166pfg.10
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:25:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443537; cv=pass;
        d=google.com; s=arc-20160816;
        b=a4YQhsejvPOxN05mSqeavWk5FddkPRE7ZJ7225kCVzHA5N+KMsW0NBsfmR6odQt8pu
         8YwfSeurKlF2Z4nn6SDexcbaOSk3uNLf75LGrcjiMW9u/yNh4AcUuOgqI8EUffRZz4B/
         iQgRumq9X3ldrwrg9sLgMXiE3Dq7nkU4PinadrL9bx8425Q4fV3cNLEuwEihgP3p7cSj
         RUQGj7Cvrx+01XERF6XS1hNMNlr2DJfVNNP4FsfzCz7XKgJ+lEHEx/RI01YJHiNaBYJ/
         u3lly325vhzCChIX2bzKPRCDKuZfGyfT7LADIi9Sc4KOYR4LPrFiGcRaDP0+GA46A8rz
         l7qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wxjJBW2n2vqaElEdQSVaK++4ZKwvZmg48tBNHz5JgBo=;
        b=ReAm2U/UnAF5cjbwCrCrzSgaw/A6VSqrmPkTKiSdEdQEClD99iSmJugPuEkSheslcs
         idbMaP45yuWA7KWBWNX/2mzhJsSEW06bK0j1l4PoQDOej8tHBC7CQTync9CzX1+FOFOc
         ul/ip0eOuPCFr7TZCl49teWDVR4vGSuvS8De/w4cGUHAhcBl5WKeiXm+Q9DUrO+Bg3PI
         O4dPyLLN9iMNUEyEFnUcw3bRvZysV57D3mRc5QzqZlksKN/tGUQxEPfjNKwvcqnUltB+
         NpGgbcM1Hg3LdB4fuGXvekybAq1rfUX9i/CS/06iKxS0RjyLpI0s8lSoTvVH1IkOODSV
         MsAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ukjd0vt7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wxjJBW2n2vqaElEdQSVaK++4ZKwvZmg48tBNHz5JgBo=;
        b=swMya/l/bvX61FWHSk2g3Fd42QErQLokZ873wL/YxHNcH6+rPmfIhlvWRktIrq6xeQ
         w+OCT/pe8JksisnTom5im/1mSXZWUp6Bf0hhki2h8GHVGx78KDRAp9cZLw06LV9P5Ky3
         ObVLHWzGjCmLS7NFWAONdZ+ArD+N4kZsbT5K08+PCTc0Ys8bSv/x5fbKnGos+COAuvPz
         CE4V+hPjzmgAZQtm4t+bDuka8Mb1IT/qXlqbfeuDOLGC3XEVC2aqUopuRXehtIag97he
         1HawjWvEPNXQruU+JhlrsiH41uZIwCTvO+BuPrimDuBapv5B/WZx8ijb6mdKr7vc4VON
         A3HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wxjJBW2n2vqaElEdQSVaK++4ZKwvZmg48tBNHz5JgBo=;
        b=lsa16DEuVBtm4k4xeGsiOs2PRmB58+zywSLRuxtXhQ21lhVnq1IynHiUYS6G0PeZiW
         TkFozBnMZ9PKkVvAnJp8I18Poj803pBAzpTbDzOj8JxiKyzRkCty91l/oMoUqXPcyYRm
         1An0+XRUSQjuzdQ356RiR29F6avVVT2iRICgE2JSdOk8MmZaRVHGyhii7mIcbNiyUjDN
         yqQ0fy5kCDrdqA9CxfJzHeENhqWLY3bXrGnVdGuDb5Bi7/797AjwkKkj9j2FWx4sIN8O
         wFtd4DN+zDnVw3r8l2M7xj+RxOycoj0sVtedDJYCzCpaT2QRDWMSp4RGolhwLqy6ACiw
         //zw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532cGbebcDxtAcxpflzKNLzOvvnalDkmW5n3FoEjjD5BHvAiq454
	POdhihMHcPs2EC5274dm5UA=
X-Google-Smtp-Source: ABdhPJzaUUe/59wvWyvzXnqPPZ78TsAGSa+iB9+HdkLbCgChPL0/JO2e+4/4JRAIgDOObO0HhUoEJA==
X-Received: by 2002:a17:90a:e50b:: with SMTP id t11mr1806241pjy.109.1592443537766;
        Wed, 17 Jun 2020 18:25:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:bf05:: with SMTP id bi5ls1507896plb.5.gmail; Wed, 17
 Jun 2020 18:25:37 -0700 (PDT)
X-Received: by 2002:a17:90b:30d8:: with SMTP id hi24mr1811887pjb.78.1592443537452;
        Wed, 17 Jun 2020 18:25:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443537; cv=none;
        d=google.com; s=arc-20160816;
        b=lcJ/Jg+aiVCuXqnX/eq0+C/6KdbcQLR2SMsSdr+NI+Znn5C9ccGDjuLg+wo1CIiZso
         57vAB0PgAj7DqCfvaI+gvadlwllK0D12Wz/hKQbXWlwLLKe2M6rk8I++cJPJdZo4PE9e
         gby8RhvPjF93AnrQeuHz8nlYNvK4gj9hsq0iBwpk1wQ/+Yy7HBhSBIW0YAUTZbCCzB3u
         /lJHelK+65B71VtkWtWvQaCsZRJcIc+SbwqG5mhWZKfViHeFNQMgldLVgNa1i38/y6PE
         zP1lktS0KxzWhJisEcRsDmOX+1nZY2HVb+WAMboeD5ErDqvhaoXH9z7rW4hs2UmDcLol
         K6ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hMYCx6cxrOuVNy+2JSh0vxrd+jQHhYQ9Iz9K20Ca4U4=;
        b=uhMq7kaMmgH1sknnteQuOqP8cnNeWta1zVZ7TiFiJZVsiRI1oG6t2i7Xg5PP7/ehjp
         5UXKCP90PQ81K/EV6bob72U3pgLHjV1mVFThdQcKkK7Olo/nM/bCKvmw70VER5cK5Ywi
         mOAuYbZmLiqsjkJP6vmiH4khIN30PutA1DWyNELtSFaJ11Df3uj8WWNN0yaUGV4t+WTJ
         wtazllc2DLPRcnoVwi6Zw0rUtsr3q9ItwnPB0w6eCusnOtBARM+H2QyBbxPNGNJqUV+9
         iJNtixJRxwhii/x+mR58iXYdTEI0aYpohJax4r+AmHC305y5TIjF/NTrcXatWmv+WcGy
         lLrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ukjd0vt7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id kb2si52053pjb.1.2020.06.17.18.25.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 506A12088E;
	Thu, 18 Jun 2020 01:25:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 155/172] NTB: ntb_tool: reading the link file should not end in a NULL byte
Date: Wed, 17 Jun 2020 21:22:01 -0400
Message-Id: <20200618012218.607130-155-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ukjd0vt7;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012218.607130-155-sashal%40kernel.org.
