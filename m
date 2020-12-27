Return-Path: <linux-ntb+bncBAABB24HUP7QKGQEQEKMUTY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D462E3223
	for <lists+linux-ntb@lfdr.de>; Sun, 27 Dec 2020 18:27:09 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id i2sf4354660plt.14
        for <lists+linux-ntb@lfdr.de>; Sun, 27 Dec 2020 09:27:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609090027; cv=pass;
        d=google.com; s=arc-20160816;
        b=pj6SpfnwEHwninaUldMdzrkTAidT//lyGnIX0+tyxBlSyZY93NAyja8/uQmmTmv/Du
         AKPz9WIhauWHGbJ9+pyx6gtL4rbpzX5+nYPyeMxr23VPut4HFnH7NLi48R3f5cJMMnjm
         m2mWrZuP+b1SB+24mJ0Lbezje4+kauW5+Magt2Rd9F3a4VqPtixOmpJ9SfUCG116yUU/
         lCToVuvXUJdLNOSIXriepiUp++DKO9R0IrzgHEwOXYEM7l0Cx+L54cSwCGzfp89Soo1E
         L3Sf7f9nvg/Cx6HX02WbwvqnzIUP0HkYBi+9KLd/hW/wOV3tFU8omHCFR9WDVtlB+JFo
         NAeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=V9POh5tFeZmK29k67vPPRcqJKD6UIlmnLMToBAHe1tM=;
        b=hkH9CmweTYTMKToE+8t0q71BKN0lVG9/cqJfYoo1PkM/fA37GhmPnsxsPWlsZJLGjp
         6g1OTvpFpzBdX9uIIfaqu8iMKD2rfpFxJDhctUvr0uwk4oXCN2zOAHGqqXHmiBMLUNie
         9pM7XT3+3yN74XSjx3fe2jhogRUXsTNmo9lvG+sGeYobU9o1ja/ANHBxEMARqB8b8fID
         i59duakyoO0Au+y8mEaLoQub4br/ZVG+SMW3QbkXYSisocqPL79fAdKL98V0UUT3yAaZ
         QNdmHmGisSEbB0p+xZ0p1lTYDGajL7iglIC90cBaGIjqlrXODg4oCwNPtnPWL7TvwyKo
         xXtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kohpFiyP;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V9POh5tFeZmK29k67vPPRcqJKD6UIlmnLMToBAHe1tM=;
        b=eAyXlgKyrRNvuGg8HwoCCZB+6wG7ioaB9NRoG36oQtzAhoz/Vxdi3CeqyIql9BGUiA
         yXKy0xQ+RBuowbqQxDBBHy8FxbmVn9DDvrafIsIYvvfi0cgpj50zDzVDLnJ0hxjk6FBT
         0gsWw8+1DP54J/fTBzVDY15MAT3MipUKSxl7GhoFmTqiW6CCTZRTcx9vOjAKap1hOzfD
         uksLWBfJwsB4FwL1VDOMGwoiqc3D+nLF5XeS/E0R2JNnCE5q/VSwLQVYaB+uPpOSrFZI
         Qs36pLbCRFTVWqF0hrPij+uI3nG/ReJJXNnd5yq0ayYf6WFekLAKcNA0x0/UYAy3I3z5
         D4Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V9POh5tFeZmK29k67vPPRcqJKD6UIlmnLMToBAHe1tM=;
        b=Z2LEwDIUaqoci+lxd8CpQceUTpcw8Q7Kmo3WPnksxGWrJSj28axrZeTh+BpikwZbw8
         eeVLMC1ejTkwA2xoLbJc9iDtbvzkEsoHOAjyUI0tmkdww55r11SSsHXFOz0JBU2OSujv
         ZCiNYr1D69arwqKsdpwnsIt6LfgzAJ3fV5T1pwnuJYy1BEeGQRvWREFoeYw7iZd9LuhI
         iezW8qP3ghFi3uEXfMn2WVvgfKOtx2AZ9KxCRyr3atdq52uvsf2mpE23SP1KxDIIotom
         CjKDfA6hp8rlLMwSf2B5i+rul/9fYoJLJwUpdJqr/YUFBM9TvbF9q3UDwQWe7INP2bCE
         5h9A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531xk8ngFO3VjRWPYosjGIVLSLF2taNZN6GL+slXvblbqVWU8bHu
	Fg4vrgCPf/fxWQkOwA9CPcM=
X-Google-Smtp-Source: ABdhPJzCl4jg3F7IUy8B67kDZVd/BzEQONR9JACR4pGmc+IC9l7GGo9+JMy0aqfJPQkdvVCJgkq9MA==
X-Received: by 2002:a17:90a:5911:: with SMTP id k17mr17360201pji.152.1609090027779;
        Sun, 27 Dec 2020 09:27:07 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:548:: with SMTP id 66ls26594686plf.6.gmail; Sun, 27
 Dec 2020 09:27:07 -0800 (PST)
X-Received: by 2002:a17:902:7d8e:b029:da:cfcb:f4c4 with SMTP id a14-20020a1709027d8eb02900dacfcbf4c4mr40524681plm.79.1609090027300;
        Sun, 27 Dec 2020 09:27:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609090027; cv=none;
        d=google.com; s=arc-20160816;
        b=EEnfLOId7dKE8bR/YcHVQP1gPeMYZaBPyzesF8dv3FcAoZ28APL1k607gY3kikqHB8
         tiQkYRHGbzqAIcfjsE0xT4vnbsjuI98gJyVcurdco5W24JyADLLpbXCkh1Y8y8YvMngy
         dR/L/9tOct4I0KRXUUaZzRAZURs0gC7oQT5p+wSiNwP50Eke/fzSkAQQBKOSf11yj78R
         OctnNyGAkk2HSSejoCSheWh5pSSjvk1ruuiO4J4PBC7YQb0whHElpJwurmfQ+NIIjPNA
         dg6t1ZY3RPjpvSB1D2R/aEYUc4/u1mNXLoTeRefEMecA/hqqSKPYu3oOVYI2uTB8DUNO
         roIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:subject
         :dkim-signature;
        bh=cyP0cqKd5i+cwCUFc/ImVg+w86yxtjPQvED96ziFPuU=;
        b=vVCUTdIzlaZIdlzoLQod4webLHHT+MqAMswEuioH4lvfLsZG+x1bvQT3giEnFoJ8lp
         9KGUNA2XqTpBhRXxMtnAexJY5sbveISVfqOSqyMH8NkZzMBwFtShXQLa5f5LbDqC00eQ
         AxYbrH3NMSPg7KIap2UudGqrzdkUXWDjHp/P6XvUjy3r3FBIUCYtQSJRHHU3MYiXv979
         L8wJec9UsTRNkw9JlMdg/Cdl3W8pUehKpKpbhVICVYB0uK2onX8DEa8VkRHA26E3x7Yp
         4Y3+bdxMP2PEmrs7LkPiy5eD/OBiWmCtrc6HIQNxkfi4diMRI0PmDZ1D7dFzVmlwWb7p
         7/Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kohpFiyP;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h11si713977pjv.3.2020.12.27.09.27.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Dec 2020 09:27:07 -0800 (PST)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 011912255F;
	Sun, 27 Dec 2020 17:27:07 +0000 (UTC)
Received: from pdx-korg-docbuild-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-1.ci.codeaurora.org (Postfix) with ESMTP id EFE4C600D9;
	Sun, 27 Dec 2020 17:27:06 +0000 (UTC)
Subject: Re: [GIT PULL] NTB bug fixes for v5.11
From: pr-tracker-bot@kernel.org
In-Reply-To: <20201227141638.GA11393@athena.kudzu.us>
References: <20201227141638.GA11393@athena.kudzu.us>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20201227141638.GA11393@athena.kudzu.us>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.11
X-PR-Tracked-Commit-Id: 75b6f6487cedd0e4c8e07d68b68b8f85cd352bfe
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 52cd5f9c22eeef26d05f9d9338ba4eb38f14dd3a
Message-Id: <160909002697.19416.15922891293514853862.pr-tracker-bot@kernel.org>
Date: Sun, 27 Dec 2020 17:27:06 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kohpFiyP;       spf=pass
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

The pull request you sent on Sun, 27 Dec 2020 09:16:38 -0500:

> git://github.com/jonmason/ntb tags/ntb-5.11

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/52cd5f9c22eeef26d05f9d9338ba4eb38f14dd3a

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/160909002697.19416.15922891293514853862.pr-tracker-bot%40kernel.org.
