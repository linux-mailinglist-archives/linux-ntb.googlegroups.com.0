Return-Path: <linux-ntb+bncBAABBXGE2LUQKGQEUJ4NCCA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6496F45F
	for <lists+linux-ntb@lfdr.de>; Sun, 21 Jul 2019 19:35:26 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id n199sf14228622oig.6
        for <lists+linux-ntb@lfdr.de>; Sun, 21 Jul 2019 10:35:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563730525; cv=pass;
        d=google.com; s=arc-20160816;
        b=Git+7oS32xoFOqIxMDAX8eOa8AxvOaehRmK6CNSnKJVDT66T93beRzw+9gBESCt5CT
         KTJBv7a+2UN+GjwcCd3swC2cxcAVB2jHOPUmyR/tDR6k30RTdKbHi7jyu0UXGoBSb2xw
         aikAPcM4YSphpvVQO3Tg4NEaQxmfY6XBkCk94YIhJu6HYfb0yVylNPZNWg209XuXO11v
         DD3RIov6CEphhdCUPO70Ke6jG8G4bLiZjJ2Fnmwb/mGRXjnZB2aHnhj1S1RwfFUSNspN
         S3uHo66b6NBEQEe9ksVPIzPsO67SwOvLIDYP2zDMcEidmnyHntoorvXLH8ibDnh7PQo1
         ARNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=MsTLxEKXH3othHxqkEiu7OQFuOQDRRk40JlWM4NMJvM=;
        b=OGlFVq0Lioe9QyWy9S4Gw3nCujsDIFbcF9Eg5hmeiCGPtOeeJsngD4PMKGSIH0f+ym
         tfk2xY5qYgMSg5BiVHWJbeeIB1lIaTQ+cFNCWFiqX764cBaEdncvUI0UYOUQ0LmPT56o
         dGXjy7AAlzRH1qVEpV7kZz9kcg3L3k1znZrX+rJbL06YumyPmYct2cXJm1aQZcUESwhf
         Ifw6+DkK9T92ROrMkkt5RM9WQs+GU/lUGK50oX0yBSh6ASl9a7WjH/vuwDxb4dedYZWw
         n6dP0yOSFwjA4IyNuo1c6vXhDKE/ELv/X1kgjnv8CXqAMFZa7J0apn45It5VdNrCqOGE
         3+AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uh06qs0+;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MsTLxEKXH3othHxqkEiu7OQFuOQDRRk40JlWM4NMJvM=;
        b=ZgpNs7P/o8LpxsaPhK087y2W2fycobKifGQiAvgGOkAAVkzAeEZcYRpCXVumdcgx1w
         K9N0gFg2fL+3WM1THQK1BYhMYxaGgI+MDwV9h7EIvHC/5bskSdPjaSPwDC5dW5AFWa+U
         VoiKVgB5KH9lJhqF2byx4Uoelecyq6mg3XAv+0zdBtgOcCR6ZIRIyQH64HxqcIOp/ZcD
         GVR9P0WbwwsFhEEo5lbfaxqQhLjEEPdLjjz4GdmdEzzzO0Dj73Gb5yTNC+ux4jQdsgbY
         A7MbjwrLFxXbeuULL8q8lr8gVFwA7oVz7eXXQIxKLQapGCGH8suSxZ7K/GH4Lfxv1KRO
         WddA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MsTLxEKXH3othHxqkEiu7OQFuOQDRRk40JlWM4NMJvM=;
        b=P1OoY59oLQY9crk9fWtnGtmJAOA4wu0d4EUL9WdJCH0Fn74RI8+0ZObZIPqn4ftJMx
         gldC8m2oW3oqXkXR47c9/wb98KflczMESR80Dc0cSS+/t42ZvGThPvPoJY9QwsjZxXYv
         jK5AJ9qda2+dUYh84chOazfvaI7ChN24kqsPvfolb13YzmRTn7j56gYtWc9cWnMYN/Gj
         kF5mQ4GKrNn9GUQ2CE/vgR9yO0TgPzTdVDj3Y0k+UBcZhg7birpf5O1VW5Y+zkKc+GCK
         nRSyh6lvUob388OXZdvfUz1t4jhlmQ38cnF3d5PhP5y+b92KPk3+UpBxa34FKDA68VCp
         6UmQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAU7oDeGBdWekLh3KIC8vGQCDN6jW/h9GKHHNWoERwfnlY/JKdNn
	GOkBgkrOaWeQosn4Rx6GY94=
X-Google-Smtp-Source: APXvYqzC59OT2+ir6ArOQSCu7u7CeZNLcq+BlCjwUAf07df59HbeAm2rq/woPkW65H+v+LwdksG/bA==
X-Received: by 2002:aca:5612:: with SMTP id k18mr30980120oib.12.1563730524959;
        Sun, 21 Jul 2019 10:35:24 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:eea:: with SMTP id 97ls6967261otj.13.gmail; Sun, 21 Jul
 2019 10:35:24 -0700 (PDT)
X-Received: by 2002:a9d:7cd1:: with SMTP id r17mr28062222otn.356.1563730524687;
        Sun, 21 Jul 2019 10:35:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563730524; cv=none;
        d=google.com; s=arc-20160816;
        b=kENkJZ1tMvdCrPcfkmQadc/x1u9u+XRGQ2+qTbon0leYB7/odp4pWKUE2cRcZzbu6S
         NSkHOAjT5goftAu/GaU0qmpLyzCrI19j0YG9JD6z/hgoO6WAm0w+umvqKv/UeMPl6zTT
         PtXINYTNZ8BbT+1H0IRhk6YVmqbliwaoxdQEuA79cF0Cs90obagBlrHqnsc7RJGxHDcF
         5r9PiJPV+W5WNgCI+EqVfniy9nXmkcUm7/P7bzOJb8jDplfe/IYm8Clq7PiAFJuUs9Fc
         vzHadbSVW+imItt9FqiK4Y6tpgvM2visPveDsujALWdiQJIOZ65pvbNlrE7Tl0dkdjNg
         UlpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:dkim-signature
         :subject;
        bh=j7kYH46sy5JdwfvTu7HiVEREubsfOGxYCig0OJ9zhsA=;
        b=dJDujvwSWiKgctGeUAv/+sEo5Asrp/6wZ9TeJqsnHvj+qzixgLDeVNN9frxOj4hnla
         n03tYcy/tAEms28bKigWECDcJY6WV1nEqSaHScsQA5IvtSxrG/9VQIue3dUCNTxqMNSm
         BD9sgGOsdo2dpWPa8BXVsqKLCeWiQ0Bq/3CqxwHZA7Mi8awha19SOXEsEMseT2FU1fiS
         fW8a7xVrjUDmOG9y3c3U9BYUcK/w8OQDBBTqGNzjg0wvohqIu1fUUzN9frDcI+VUYAgZ
         GvKgwxPHNfYHSG4FGI7DrVag16YpCsXj8LFCN4F/vH8qI9/w7PiRYmRGV+2J3EINYcCA
         Miwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uh06qs0+;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n27si1845392otj.1.2019.07.21.10.35.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Jul 2019 10:35:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Subject: Re: [GIT PULL] NTB changes for v5.3
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190720215829.GA10213@graymalkin>
References: <20190720215829.GA10213@graymalkin>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190720215829.GA10213@graymalkin>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.3
X-PR-Tracked-Commit-Id: d9c53aa440b332059f7f0ce3f7868ff1dc58c62c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: bec5545edef658f81cd9721dbe8fbebeb3c7534d
Message-Id: <156373052375.21043.14221658326083971620.pr-tracker-bot@kernel.org>
Date: Sun, 21 Jul 2019 17:35:23 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uh06qs0+;       spf=pass
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

The pull request you sent on Sat, 20 Jul 2019 17:58:29 -0400:

> git://github.com/jonmason/ntb tags/ntb-5.3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/bec5545edef658f81cd9721dbe8fbebeb3c7534d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/156373052375.21043.14221658326083971620.pr-tracker-bot%40kernel.org.
