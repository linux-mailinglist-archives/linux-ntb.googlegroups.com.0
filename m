Return-Path: <linux-ntb+bncBAABBP7Y4LTQKGQE435HPLY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4592B36D09
	for <lists+linux-ntb@lfdr.de>; Thu,  6 Jun 2019 09:09:52 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id i196sf1170953qke.20
        for <lists+linux-ntb@lfdr.de>; Thu, 06 Jun 2019 00:09:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559804991; cv=pass;
        d=google.com; s=arc-20160816;
        b=ThyiapMPhyTuZ0Com9mjLnAtVnyGGXaDTNL3VK7rBssoaynSdqDx/4ePpK5ZuZEirx
         yf5gFCBGzxS+kc3dr0lcOQNGnr4J/nk29ib8T7zvyj7Vv3g4kWTlIYbTTFFp6Ih/Oy3W
         ikIoZOWgExa0DfmYlS5JeWA6dGFYoUwkSpQ31vK3UbcOdIEGq/czwW2CWQvGjEQjuODe
         +DxyHxMRDxadog/xQdKGYLUcoZf/RPiuu7ljugC8WUi2JwPeFtNAT/L4t3w91VmV4iSk
         PNk8KuoxxWKpLPn4RZbCMw1DQZsWmLwQHUJd3E3cHdue17IfFLPoLmr6dp9hz2KymE1V
         mJEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=892Asbc1BAFrbLjX2pTXtGeii8DPGTw6XhgC0tygoUY=;
        b=caNlOIMjDod2azTlzHHdIIcNfHKvBVZWfwVXb025d7arAqtYkDoT3yY+pVgjlQeVq4
         Jy8c2gwMk138pWgvsEC1bejIiUqzzvYGhx26MvF6hZFSslyKNwD+amwonOh909afJmMG
         DOxrh8U+m8d6bd7SNhO+dKDEhCkeBdH5nb5jasw1EzZaYRUBgdDraKs5FfTWcZEImdh3
         ThOS8rg/24oCR8YmnMNsBoV01tq6pGFSHKpWKpZbXKfTuvh4ZWWc6Y8VxigxSo2Jm3VP
         o3yRT5tl0Dm8BlV/7qxrAyUsCmNOUg+BBVAPzEFNNFZR22jckppku16Ca8ocIW+50EMr
         zN7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.71.154.253 is neither permitted nor denied by best guess record for domain of kelvin.cao@microchip.com) smtp.mailfrom=kelvin.cao@microchip.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=892Asbc1BAFrbLjX2pTXtGeii8DPGTw6XhgC0tygoUY=;
        b=D20rHQKQFWdjz7d0nlFR1Bbin9IqiJ8YX8OU4ZWzyVig5a4cx+DB+7auKWoyNhb6qD
         RF4O/LZyCmyz4whhe1QoN399jZskbEKbJmw9cNY9UHxlkh3W7EPBeHkQ1jVrhD2b7j2S
         T5W615L0DQspZ6LmZS/bC78CjYeUwSMXzSQLlAnjCgMHFPaLwDETxRgtpOzeGEPm2DfO
         rXT5+ldEimRniAI1w5IQZd8+Hh9H9GM/7HO1Oks0E19YFqdZebGVplgQHDlqnybHsjwL
         szqXbSDmxVuWmd1tpAlXSlUxxfc6auIeQC5G6yZMlt4EsKsNq9umakeeG+5LtZK450ti
         nrVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=892Asbc1BAFrbLjX2pTXtGeii8DPGTw6XhgC0tygoUY=;
        b=oSxGSLwufkSv3+AfxvqBpHnUNEyyryt5wnJBAW0MFQwS8D3RWQ7eERoLY3A40GHb/Z
         z/uLOSGcCrGlzlosyP8AhJLo1aw1NCpVHybAcPdt9x8tLbYSG217gqDWCalEQnM+KQdc
         pMLkvFvj0tgisPppiOPy7m1Uw5DDS/RDszV/V30m8BCgnmVpFzoSoclecdBQpUBcqtaV
         uqOZH+NCw5gLZQdxrWdW27pfy6dW6ehepxau2okN9viGOZLvkNhzweXGHgmtpxMYnLUZ
         MsAz7Ljh32KwmkkkP1Nd/x8wTW0wylbnzanh0/xcPZfV7m5hVM5OYVF+8U8ENhoTtjFV
         E8FA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXsarVfLuPDPa1sWFGJdbLhjx1wJmy4d6fbdnzSEM7zYgYMUrTa
	Lw8+cm4L/EO8SOfl9CYamnk=
X-Google-Smtp-Source: APXvYqxlifPWwH+xn6qkKSug/cHT7ZDrk0Vq9T6uEg4VwpkkKcdT0KUhUg/m0SXZ5FYKlMC2CB5BIw==
X-Received: by 2002:a37:490d:: with SMTP id w13mr19952476qka.179.1559804991142;
        Thu, 06 Jun 2019 00:09:51 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:f16:: with SMTP id e22ls1448959qtk.14.gmail; Thu, 06 Jun
 2019 00:09:50 -0700 (PDT)
X-Received: by 2002:ac8:414e:: with SMTP id e14mr40201390qtm.343.1559804990927;
        Thu, 06 Jun 2019 00:09:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559804990; cv=none;
        d=google.com; s=arc-20160816;
        b=uz8243uknyVXUNykCRIwEDfFMVKXSqFNv/EBNGfeGdCmpUUhK74MafYBl4zvKrjuZ1
         KzCvfSPCJf2i1OwGZDq7UNB40SzrzgFS/L/Sgpl4lNzWexAOfue7phmlcdGfPE4+bjuO
         O69mIez6QjzAoBIlZq8+ElrQPwF0M+sKnjEFNugAAaTQZIwIKQ+rWLAehVCAPT7MhJYX
         NEMgPxnhg2pNWsTmrHwAPakbyCxXhDXnLhQPVqA53V5uk+OvHU2WOglTCKc4+MrO6G+t
         /JR0ch2kM+2l+3l24/nsyoxCdozcSqkCGUZWBh5GgA5PBnIHYbGVIUrYGRGnnD9D56lm
         feCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=qTG0lPFsGL5aAv45RiRgIusBQvooy6xDaF7WcfwuoEM=;
        b=FroYsGyc6r0mA9pObwz7ZWxdAO+JQ2LVRTfVQqXk41gPbIThJW8XHohsML2z3bpXv2
         WRLj+dYqP1MS0O3B9pPZbqen0xpY4LwhRr4KpWm3BWuZ5MC1KW97P5ZRtF6tg6F887/8
         K97sMwqMzeYLYJ5ncIf2/GIkVWIL5vyuUcccAq5RyAuMuZ9zlswktkR/73fBwqlcuUkZ
         v/TBPXWQ8NLu4WNhWmY9cUdj1TqKad+OAGnWQdA1BuMhlwH4r8srXcm7Uc0q1I5qcOiD
         i1vxzh8yFZUrTQxbyVPkV3h2x5zAxZyvjBiyYuakeG7n4XAI6orLw4eTemLpXstexJ1i
         YYIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.71.154.253 is neither permitted nor denied by best guess record for domain of kelvin.cao@microchip.com) smtp.mailfrom=kelvin.cao@microchip.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=microchip.com
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com. [216.71.154.253])
        by gmr-mx.google.com with ESMTPS id o26si67991qtk.3.2019.06.06.00.09.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Jun 2019 00:09:50 -0700 (PDT)
Received-SPF: neutral (google.com: 216.71.154.253 is neither permitted nor denied by best guess record for domain of kelvin.cao@microchip.com) client-ip=216.71.154.253;
Received-SPF: SoftFail (esa6.microchip.iphmx.com: domain of
  kelvin.cao@microchip.com is inclined to not designate
  208.19.100.22 as permitted sender) identity=mailfrom;
  client-ip=208.19.100.22; receiver=esa6.microchip.iphmx.com;
  envelope-from="kelvin.cao@microchip.com";
  x-sender="kelvin.cao@microchip.com"; x-conformance=spf_only;
  x-record-type="v=spf1"; x-record-text="v=spf1 mx
  a:ushub1.microchip.com a:smtpout.microchip.com
  a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
  include:servers.mcsv.net include:mktomail.com
  include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@smtp.microsemi.com) identity=helo;
  client-ip=208.19.100.22; receiver=esa6.microchip.iphmx.com;
  envelope-from="kelvin.cao@microchip.com";
  x-sender="postmaster@smtp.microsemi.com";
  x-conformance=spf_only
X-IronPort-AV: E=Sophos;i="5.63,558,1557212400"; 
   d="scan'208";a="33318213"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 06 Jun 2019 00:09:49 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Jun 2019
 00:09:48 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Jun 2019
 00:09:48 -0700
Received: from NTB-Peer.microsemi.net (10.188.116.183) by avmbx3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 6 Jun 2019 00:09:45 -0700
From: Kelvin Cao <kelvin.cao@microchip.com>
To: <kurt.schwemmer@microsemi.com>, <logang@deltatee.com>, <jdmason@kudzu.us>,
	<dave.jiang@intel.com>, <allenbh@gmail.com>, <linux-pci@vger.kernel.org>,
	<linux-ntb@googlegroups.com>, <linux-kernel@vger.kernel.org>
CC: <kelvin.cao@microchip.com>, <kelvincao@outlook.com>
Subject: [PATCH 0/3] Redundant steps removal and bug fix of ntb_hw_switchtec
Date: Thu, 6 Jun 2019 15:09:41 +0800
Message-ID: <1559804984-24698-1-git-send-email-kelvin.cao@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.71.154.253 is neither permitted nor denied by best guess
 record for domain of kelvin.cao@microchip.com) smtp.mailfrom=kelvin.cao@microchip.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=microchip.com
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

Hi, Everyone,

This patch series remove redundant steps and fix one bug of the 
ntb_hw_switchtec module.

When a re-initialization is caused by a link event, the driver will
re-setup the shared memory windows. But at that time, the shared memory
is still valid, and it's unnecessary to free, reallocate and then
initialize it again. Remove these redundant steps.

In case of NTB crosslink topology, the setting of shared memory window
in the virtual partition doesn't reset on peer's reboot. So skip the
re-setup of shared memory window for that case.

Switchtec does not support setting multiple MWs simultaneously. However,
there's a race condition when a re-initialization is caused by a link 
event, the driver will re-setup the shared memory window asynchronously
and this races with the client setting up its memory windows on the 
link up event. Fix this by ensure do the entire initialization in a work
queue and signal the client once it's done. 

Regard,
Kelvin

--

Changed since v1:
  - It's a second resend of v1

--

Joey Zhang (2):
  ntb_hw_switchtec: Remove redundant steps of
    switchtec_ntb_reinit_peer() function
  ntb_hw_switchtec: Fix setup MW with failure bug

Wesley Sheng (1):
  ntb_hw_switchtec: Skip unnecessary re-setup of shared memory window
    for crosslink case

 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 80 +++++++++++++++++++++-------------
 1 file changed, 49 insertions(+), 31 deletions(-)

-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1559804984-24698-1-git-send-email-kelvin.cao%40microchip.com.
For more options, visit https://groups.google.com/d/optout.
