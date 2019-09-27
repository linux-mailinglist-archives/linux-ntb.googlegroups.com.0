Return-Path: <linux-ntb+bncBAABBGFPXHWAKGQECUTNEEQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9F0C0B69
	for <lists+linux-ntb@lfdr.de>; Fri, 27 Sep 2019 20:40:25 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id w14sf3451983oih.19
        for <lists+linux-ntb@lfdr.de>; Fri, 27 Sep 2019 11:40:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569609624; cv=pass;
        d=google.com; s=arc-20160816;
        b=zl4UMQD6+RrjyiaTT3NKj8XV2OsSvPxtfKDeHKz5ybeXTtU/BcskAzGgEXwtLlACdh
         Dgs60yJFCmaNtqh0y8u+/dO6KlAC7zjXYo0IMcVIeG/mmwP3eQqdk/X7Bgar4o8ZTWUK
         dV+GihHwRHNhFFfd/aa12AxCXEn+IkXVsLTygiAGsX3QErCLSfUlQ+wCYpyxGPJeJFFq
         o207d89zxqPUcQfUHD5WT92u6x4go3wMP6s3pMpXpZhV3HaG0tk73HKYRlVRD4lpw9M1
         0iUndOZXAuPl4yEe6N8HaaDGAAnWotrrGoXmY0H7Mr9IUl8TOBnXOKBYdrDzcKIK/obA
         uEjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=1RUqsJGFaqXDFJQdAfL8wExocY8kUQExyF3NeA/vNTM=;
        b=0gY0w40rHnWYf2Olzmjy3VuCRyHaWwUXTOiAbG2IzaQ00npSWo6Q9VdLul+M/U1j6H
         R1exR9CIC7G1DH8xHkct/N1LG9gz9oWaN4YHrBrDGluSKPWtkgVy7UKY9+RQ0jjMCgVz
         oyA9iGu3laMx9HTH5cHl5OtZE5LRWS4OaBYsGyPdwQm86bwK/j8kb2bdtqZLxpdq1qDE
         DDVn6GyJFLa2APBy5bOg/lt+d7dvbGAHfqpgrmcJzNN1QHfUyKU+j1Hr3oPxGfa899F3
         BP2F8qoxCMLk7TxwkuVxo4vMT9mArjqEZsJ7/M/G4pQDQSDaEU+6VyesXTSgr3uBLvJn
         CNYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iEObLx7T;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1RUqsJGFaqXDFJQdAfL8wExocY8kUQExyF3NeA/vNTM=;
        b=W0TIEJpTXR/Y4HVR3fF9fPjBelVxavY4t/n523Q5ougZKf8BFKDpIaf5PGiINLWOHt
         62O44qBiL7ooA9mX+7cTeM+CbxsgrUziUCAO73FAkvFrobV57VNybkee5RZM+qmzyNIn
         DRQxayQpcDOW5hITh8FN/E/wt8ZSk+i78vn3IupklozYMAHlfmuODz/GNFwoHBaB+/7p
         Xk6GyK9ARuQe36vsn9ttdJgpFA359kmP3DXoZKTAN9QhKaqtnAvx51bYhT9rWy34YlVx
         rJ4/DuHl67ItaoZHAaEGu6Byeq0kUbCo7jaGLc59d3MqeETifa9R2pSTaXyUUMcrpstz
         RsCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1RUqsJGFaqXDFJQdAfL8wExocY8kUQExyF3NeA/vNTM=;
        b=rHSekAVLgcHDFLUtzPQx8MBW2KgZtinUUfGjfuyCysIWoJSb5niuBfeou52jtZtQfV
         T/x+GXpqF3t/gauepR02Rog2wA+s4aHtWOn1/rgF/0Umkf8V8Q23BXL+rI5NNPLGugSc
         F2WBvSJLr50OI5gh+TZVsTs46sXWpbtG8vSXKZNgmCEawJBD6tNEdM8Wr7wAsSI3iyb/
         p+nFa6zk4SsmbZjvFy5VWBg4cRQrHlOD2kifKoglOUBi/bzDcUzG08Jh7+4+uRlYXe56
         Qebx6fWKyNKMBk+E2GR061etp/7wVIxK3ThtuICh0AFvTlkfUXabuS8qQ17Zd9BCcUKK
         cmeg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVkm4XwQ25EX+Ks9Bw2F8fzg0iDLvCsHtxoRTwBA2rI89UNL71S
	h63G9AkQqX0+Eqqht3sc9Nw=
X-Google-Smtp-Source: APXvYqyGFk3znHAA6znNIKMd2GbTzDFs8p/PZ+vKxRPAynlsZjvrF9IuxLK5R4wWcujWx03N+W+QRw==
X-Received: by 2002:aca:d694:: with SMTP id n142mr8393506oig.69.1569609624274;
        Fri, 27 Sep 2019 11:40:24 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:de9:: with SMTP id 96ls620550ots.6.gmail; Fri, 27 Sep
 2019 11:40:24 -0700 (PDT)
X-Received: by 2002:a9d:4101:: with SMTP id o1mr4623316ote.155.1569609624091;
        Fri, 27 Sep 2019 11:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569609624; cv=none;
        d=google.com; s=arc-20160816;
        b=axkHGMIHnhSMdLDKMApndPV9Nb0tHLPWX1QyAgorVC8b1hAt2a9/0Wewc/1mjWVPhb
         p3JLdOeih4bjF9hx33XU3/pn4IOEngL+Ht44WnDJrNI9cg4VFXhMSv81HPn6Yf5vaJoq
         Is8wBhkkk64TiCMY1mEYGiFam+hUnlPoss5QNmNboL581BE4/tSNcZfQbZfz5rL/ILIY
         tHJRtwfX8kdBk/6PrqEpyEYDhddv5LVjnbwwQfBMtJJ4DhZ/vxvpeKdqOSVbJQNhIEeS
         byiVSzmqa1Z9fHbRxPUzahEekCFMZx1i31lo+pSK2pt/yle0NKDUnKZQ4p1xNVOLXmDa
         0+8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:dkim-signature
         :subject;
        bh=lTLXFw2hRYRjdq5Mw2/xwTylu3//bbp+Zgp8T99aoso=;
        b=LIkIgYOS2Elr+QmOvk0ghtga0HsCn9JJPnaD4FeLkbaofHrr0pyxPEXkvj1ksZNGEK
         I4inMWslao7cqoY7D46sr+SDEGFTUxUQyp1OWqCfx7z7k0lCEudxzAkUkRl6m2hvUtjI
         NDgXe7rR2Nl78pHVgPzvBc6m8daPStuH6H96C/8MLwHyyllo2qAZOyUmYYIj9LCeOUxU
         OYQ1tYtjrDenAXHa7CuosIu/Q4hQorCH0I/FoYQBo2zhwBjzrM3Tue0SENfRiZNDoKEL
         dZTyGGL4hPkZk8qn/Ci6KKa1nxXzy/wOOM7GYBvJkhZH0a04xhZHOjhGf2gSq8uSaNDN
         QsIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iEObLx7T;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w205si279020oib.2.2019.09.27.11.40.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Sep 2019 11:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Subject: Re: [GIT PULL] NTB changes for v5.4
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190926173522.GA15861@graymalkin>
References: <20190926173522.GA15861@graymalkin>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190926173522.GA15861@graymalkin>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.4
X-PR-Tracked-Commit-Id: 4720101fab62d0453babb0287b58a9c5bf78fb80
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0cd81d77d0569f1dc1e39abeea93c6184e9b5b54
Message-Id: <156960962332.11345.15498745655077922358.pr-tracker-bot@kernel.org>
Date: Fri, 27 Sep 2019 18:40:23 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iEObLx7T;       spf=pass
 (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The pull request you sent on Thu, 26 Sep 2019 13:35:22 -0400:

> git://github.com/jonmason/ntb tags/ntb-5.4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0cd81d77d0569f1dc1e39abeea93c6184e9b5b54

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/156960962332.11345.15498745655077922358.pr-tracker-bot%40kernel.org.
