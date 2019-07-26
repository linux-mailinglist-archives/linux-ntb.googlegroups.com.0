Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBCMO5XUQKGQELFKWUAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 699EF77149
	for <lists+linux-ntb@lfdr.de>; Fri, 26 Jul 2019 20:31:38 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id q9sf33466773pgv.17
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Jul 2019 11:31:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564165897; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzcl+m0+wsO0ia0QXLPRdOmL2k/c9bOXl1Rn6yu+07PU2fuFaGHIal0UBm95dych4A
         X8AT7aowgFiaRGcNpfLkwqAaxssaA9IZRQXXfLQYdDznF5SIdQHe4hLsTQzRo7NqtToh
         cljRsdkrBxz0eJbW9EIDZUi1VKw+ELf4gqAqWe/7zkqrBy+gtqB+vhe4BjzAU0/lyibe
         +lMUnuoEIR5mWeFD0ZUYNneFi0BFU52l2GU4o6Ovd9exPL9vk7zwS4FO5Ha8w2HD+Z4/
         4moUnKKWXh5p6x5vu+r2u5iKiCp6PuFtdjBl8V+k31NF9VcFPz/wl+ekGfGuShvDDW0q
         5Ldg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:message-id
         :date:cc:to:from:sender:dkim-signature;
        bh=TeRMy4T7C4dCMedKuli3dQ8+di2Kuh/gdOz5izCUBMA=;
        b=AW9zUzepbfeiIUY2MXc5oy3CCPiZOd1K5avTi14GYXvnYH6adQzp5dfdbR7XqxANMl
         Dxt4U6N28fvUHqWaK0yAgMpvGVKeuxv0SL4JbYoJVcvjnIbTjg4PqIERXq8cQsuKnllA
         Nb2OXZVvPDVEcgM9U1IdkD/PScn3GhAgVeTETu5JINbl+qYVFxdeQr3R895a7Iv3aXV8
         95f1RAGLtf87Zix7kfVZrfJSjXws+uxE4L0F+uq+TIEk0BrsHVn3wgrJMdmp74GQfieQ
         Zzx2NLqXVK7JFB5h1DHYiyB0Kbts8o6s3Y6SHiQnrfOjUSCIfKu0STjCQbQJKoGwzGiJ
         e06g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:mime-version:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TeRMy4T7C4dCMedKuli3dQ8+di2Kuh/gdOz5izCUBMA=;
        b=WW2ICnUTwSs9U2aAPYfDISIWH+U1SbiquKZO8Xivj1BAsjzP12l3KhebV2j0qs3JlW
         LES9kvEd52PldNtHLWSExUFMPLDBIqSjq1OMMM7CPecczEoV8H+3+vo3bphRwM12WAVd
         nAvegZP71YDtHXg/UIZV72Ku+r+xbtDGt1PYYwDTStpj50T710owuDQGZdzF90jxgclq
         kU5UydVtuXEWdOrPLe1CW5jpkfaNBBkuMjxVtwWQKSMIGcaN+jy/WulqhHiV6OZRpJXj
         0HKdulh6YErW25AuBvPqxG9whgpVyRTiIxbML5zZ+MtTKAT8Juo5Qjc5PvwdpLcyPG6V
         dJqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:mime-version
         :subject:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TeRMy4T7C4dCMedKuli3dQ8+di2Kuh/gdOz5izCUBMA=;
        b=oYjyia/U0gx5SGlud3AOuOwYiSw1hVVYVY7OLiN5C6eyRBugNwvvfQZuZ6zlVNTErn
         NA5oBgM0dNHQ+hrkFtxGpSr/0d4f3wJqPqWk2CuwBwj8KY9+UVS1SCX4L1EEf9BwFLB3
         EotPvDydQlJLH5EEZqt7DDRxEknW3j8euwpjrx6cC+EaWv6jpQ0xocSPoBmSoJ1r2SHs
         AFF47tVFeBr8lg0tE6LjcDQ/cUmPu8bKwLKXJr4f/I7hWziLSmKlCwI4cpnv9AuVtCMF
         bM0bi1HINtG8Wk/v96IjU3h9FUwbo7JpXSo354RiwsRFfVMlaNqdLCvT6/hlEMwBdZ2c
         EhXw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUD9C5RZ+b53nh7JN10vQgCKpE5na2qrlg8odWhzjWRBrRSdI/k
	H134WmJa25MeOVyjxlES01U=
X-Google-Smtp-Source: APXvYqzx5Ass4H2OQ97xUh1/BwbR/asyV56QhBtnS/ed1ZZ7XojikptgKMuY9wQj6dZViEnXNyA9Yw==
X-Received: by 2002:a62:1c5:: with SMTP id 188mr22736228pfb.26.1564165897168;
        Fri, 26 Jul 2019 11:31:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:5f87:: with SMTP id t129ls10562787pfb.8.gmail; Fri, 26
 Jul 2019 11:31:36 -0700 (PDT)
X-Received: by 2002:a63:1d2:: with SMTP id 201mr58295821pgb.307.1564165896734;
        Fri, 26 Jul 2019 11:31:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564165896; cv=none;
        d=google.com; s=arc-20160816;
        b=y27wYJ3CUBTgxYy8XXxf5E4E7oTESwO6wEHdn7kVmXb13YjDDQA3NkTMcnVEt6bkob
         3Fmz9enQluLtCe1mmNbYMS5DmlMYGualPGtQN9qEx53Ip62eba62E27r50lLWJct36B1
         Jnj/BN/t5YxGfAqKeJw/PT/xXb4hxNkBwX1yB4/AbLZk7JNYv2PoPnTpZpy+DvnNd8iv
         uvkpp0K5YNH7+TFupdaydEDXTeDO4l4JDIELHSRudBptaZCXykFSF1PN5sYfzi3/6F2x
         IJw24JgnOelcZVqs/6jbtZg+KzippB0BGn06fJ0eHjZ/yiykEd1gr0jKkHBT28uwUtru
         mtYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:message-id:date:cc
         :to:from;
        bh=uvef8TCfzEmaopMMC2VnK5BdieZywhU5T3T199EsDV8=;
        b=ufpwwYTx/M9B3+XOW4+2abfs54ALZeBXan4w7mxOCjNJBBrjn8csypoyvU/1YgsPo6
         AeR6wxoIhdXCnp/tZk6b8TWnC/1FRa2Ahdg2VcjKj0qh/jW7PLkxNJQRCA1JvB9/2s5n
         Y2RWzHIDry76IOd26WmuVJho28rkfAAaX6V2jqN/SOI1wZOxX8fp/4z8IBuZBni6Nuxt
         GQfQ5fPmxx0UG4rQaIsMGg41pjOGrE+zYZG8Or9tnu9KaWw/wHI/2YEsU6Js+Q8DOG3f
         mH6jcx55hAbqZkUwtq/LuwM91z+hIui2ear1lNGAm1cYk5/DvD6UsVZ2fwQ8xLf156Kf
         ZFNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id z9si2448704pjp.0.2019.07.26.11.31.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Jul 2019 11:31:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hr509-0005rd-V2; Fri, 26 Jul 2019 12:31:34 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hr508-0002Si-A4; Fri, 26 Jul 2019 12:31:32 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: LKML <linux-kernel@vger.kernel.org>,
	linux-ntb@googlegroups.com,
	Jon Mason <jdmason@kudzu.us>
Cc: lkp@01.org,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Logan Gunthorpe <logang@deltatee.com>,
	kernel test robot <lkp@intel.com>
Date: Fri, 26 Jul 2019 12:31:30 -0600
Message-Id: <20190726183130.9424-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, jdmason@kudzu.us, lkp@01.org, allenbh@gmail.com, torvalds@linux-foundation.org, logang@deltatee.com, dave.jiang@intel.com, lkp@intel.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] NTB/msi: remove incorrect MODULE defines
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as
 permitted sender) smtp.mailfrom=gunthorp@deltatee.com
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

msi.c is not a module on its own right and should not have the
MODULE_[LICENSE|VERSION|AUTHOR|DESCRIPTION] definitions.

This caused a regression noticed by lkp with the following back
trace:

   WARNING: CPU: 0 PID: 1 at kernel/params.c:861 param_sysfs_init+0xb1/0x20a
   Modules linked in:
   CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.2.0-rc1-00018-g26b3a37b928457 #2
   Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.10.2-1 04/01/2014
   RIP: 0010:param_sysfs_init+0xb1/0x20a
   Code: 24 38 e8 ec 17 2e fd 49 8b 7c 24 38 e8 76 fe ff ff 48 85 c0 48 89 c5 74 25 31 d2 4c 89 e6 48 89 c7 e8 6d 6f 3c fd 85 c0 74 02 <0f> 0b 48 89 ef 31 f6 e8 5d 70 a7 fe 48 89 ef e8 95 52 a7 fe 48 83
   RSP: 0000:ffff88806b0ffe30 EFLAGS: 00010282
   RAX: 00000000ffffffef RBX: ffffffff83774220 RCX: ffff88806a85e880
   RDX: 00000000ffffffef RSI: ffff88806b000400 RDI: ffff88806a8608c0
   RBP: ffff88806b392000 R08: ffffed100d61ff59 R09: ffffed100d61ff59
   R10: 0000000000000001 R11: ffffed100d61ff58 R12: ffffffff83974bc0
   R13: 0000000000000004 R14: 0000000000000028 R15: 00000000000003b9
   FS:  0000000000000000(0000) GS:ffff88806b800000(0000) knlGS:0000000000000000
   CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
   CR2: 0000000000000000 CR3: 000000000380e000 CR4: 00000000000406b0
   DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
   DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
   Call Trace:
    ? file_caps_disable+0x10/0x10
    ? locate_module_kobject+0xf2/0xf2
    do_one_initcall+0x47/0x1f0
    kernel_init_freeable+0x1b1/0x243
    ? rest_init+0xd0/0xd0
    kernel_init+0xa/0x130
    ? calculate_sigpending+0x63/0x80
    ? rest_init+0xd0/0xd0
    ret_from_fork+0x1f/0x30
   ---[ end trace 78201497ae74cc91 ]---

Reported-by: kernel test robot <lkp@intel.com>
Fixes: 26b3a37b9284 ("NTB: Introduce MSI library")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/ntb/msi.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/ntb/msi.c b/drivers/ntb/msi.c
index 9dddf133658f..0a5e884a920c 100644
--- a/drivers/ntb/msi.c
+++ b/drivers/ntb/msi.c
@@ -6,11 +6,6 @@
 #include <linux/msi.h>
 #include <linux/pci.h>
 
-MODULE_LICENSE("Dual BSD/GPL");
-MODULE_VERSION("0.1");
-MODULE_AUTHOR("Logan Gunthorpe <logang@deltatee.com>");
-MODULE_DESCRIPTION("NTB MSI Interrupt Library");
-
 struct ntb_msi {
 	u64 base_addr;
 	u64 end_addr;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190726183130.9424-1-logang%40deltatee.com.
