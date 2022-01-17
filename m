Return-Path: <linux-ntb+bncBAABBSNFSSHQMGQELGDHH4A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD37490223
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Jan 2022 07:55:06 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id x14-20020ac259ce000000b0042ca28e7200sf10152398lfn.9
        for <lists+linux-ntb@lfdr.de>; Sun, 16 Jan 2022 22:55:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1642402505; cv=pass;
        d=google.com; s=arc-20160816;
        b=DtI6NGhXhIgzSKkQmWt/MqZZqC+V6J1IvDT0+n/Vpi21xM3+uSCIxU7U6OoQ0YHrP2
         T3KoHmQE+z9tbxP7cHJNELHnYdojsm/EUXhYyGWc2rnlswxCFbsq7GX2ZbbZeqZi9SEB
         G8uX+c7KOO8cIV+vXuz+4xwBlJTPfO3Ul/qrIWgHG24t3GVGh12+8f7Yho2SGo7HQS6k
         xFA9Mh6XXw/iEuU0CNg68P8ha1wQkBN5IiyfswfhbpaIBwsj4JLJffXh91dD48OSmLX3
         OGhWV5m4zY028B2DZTfEIR0vfIsisTkjbJjfezLaac0czau9sGmaEPjyyaBcWuRpP13f
         aZug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=PZdI/sURhL+o4uK/0imPBAZPbYhHwfDMaH01crCr/MQ=;
        b=V1HkYBDN17cKElF0cKsuabq14hrvl9MckLYy4NgH78rmreCOh7R0fAniwXSaWbJbL8
         6Tz5WBqD/l4lpxxLulEvfuqFg7Se/aiBdegn5UPS7pBxC1SrNjZOyvhnIXc/eG1xd9+Y
         yHSIIvKI6sMGs7KX1eRp10Eb1PXOca/llA+/7bOdtwCeOqI8mYg0PR1mGbfKk9SU0b6e
         Y4WgH4Ue/Sdgui4B5bpZ6hfgE9vjoahevUCOYQaU+UM+Q8aAIg+hmgltqdImaRZfPqnw
         lsGB+mJaVrY9mSaeaS4PChZF2vYqx/nTe7+FBow4Fo1BnCAXPjTanWZRASYN9ATmoPB1
         yxyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p6ENgGOE;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PZdI/sURhL+o4uK/0imPBAZPbYhHwfDMaH01crCr/MQ=;
        b=tVT+ycB/ObolvqW+MqHqjuH3duPsQzA5DxdZKqifq0KpqdarBa4PFlmeIjKPVReHB1
         tQEYIMJgQSsasSw32AYZp2S8o1yq2Ol7zN0jUhyojgal1OhI6yAC1xULz/CIQ7XaS2nJ
         IlLu1JQQQ5V3ZNSE0ySy/1h49LvkBo+hM5a8EAlqkJ2c+dbGUCKepvc3jBlRaSxvmpgl
         mX6c45+BqyGD/ySVgAhFn49dPaIMvs4Nx0dEnJY8G8IJMHpArn/JqHBwxiE75xjQqOwL
         VrRMf5BdlOrjIMD7jooBl8bKlAo/PHAoYYnkhxxXf9DO4tkDkg7Oq0s6/XZ/y/qGigK+
         ZocQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PZdI/sURhL+o4uK/0imPBAZPbYhHwfDMaH01crCr/MQ=;
        b=LtzwumkCOxlHhRhNEEb2UThV6IaUA+/+hBBubxxhTZ2U7f/mDwQQmDA9bK1BEWdgo0
         iCRYNBRiJo7iyIqfYdsoNr1J4bkGNcwfnaIbJZqRHKUFLa3SLtk6kFXummaH3spDL9g1
         A0wKbwCGLvGNb2dNapQebTChsnWwAHigB7mdlht+TAKUC/qo6F6Nw7KH5XtdhL7eCe5w
         0VjBrNwX0TvJB9llNdeGgOFz3Mn/apRU7i2OO/hV+seXSZNK3cDgsVgG8XGpLdaIdYG6
         uAdwmKrkH/3UoXc9W/u+BV/2nC++zrjWJgeZjbCJ7Mf9qM867SogGa3DuQnr2SGnGEeU
         2DpA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530axmk3C1q3phLYVe1gVdBwJGGbnO3qwrsrxkzX/8FgMG3fIefQ
	YIkZrXJA723a4mrCL3Kjqnw=
X-Google-Smtp-Source: ABdhPJxPvPb8ZT8FQ9CM5eqiP9K4utwerFSNNFNjkTqfrb1wrXDr4Et7w+3HA1Ja/hCKEOj6jjun1Q==
X-Received: by 2002:a05:6512:2397:: with SMTP id c23mr16208174lfv.278.1642402505726;
        Sun, 16 Jan 2022 22:55:05 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:b97:: with SMTP id b23ls3756663lfv.0.gmail; Sun, 16
 Jan 2022 22:55:05 -0800 (PST)
X-Received: by 2002:a05:6512:3049:: with SMTP id b9mr14533709lfb.182.1642402504942;
        Sun, 16 Jan 2022 22:55:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1642402504; cv=none;
        d=google.com; s=arc-20160816;
        b=be+Cnb7KNebDpKyzW6Kvxq9oM0Y6LZ23kUirTD4XyiuYg06aXzwWwRw8kNPdM95H1I
         5uC+t2u/KBONOP3H06t+ErdeEJoJyO9IH5bKZe3MzS9JUS6z+OiL2oH/fWcNlOhFESRZ
         B8pFXA0b6j/JRXntm/SC8Lit9+6kIMzkOinFNpM6x8QdazeKTpPbhUGSow3vCAq79ylq
         qismyEd+YAld+/6JfUPs6LqFhVn7caKPgXJNrNGr/nmoU4Wba1Tb4yJJPes+Ac/DpfMo
         eRokzYSKU53LHnN57ponOv3jgt+tT3gh31Ha/ia6OwPe7s/V4lfodhCoVMJVx1eQtfOh
         s9Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:subject
         :dkim-signature;
        bh=7470Hs+ipeX45fuwWTkgQOSQs4UZu0YRj+EYxQ9fk8E=;
        b=S7pTca5v2mq/9MsdJlpa60PIxeVN9XzN2H+2LXFaMx+F0CoUSRtPPSqGDzMvGSp2vz
         y8mUnPl93I3J9up6nQXSTJ77qcgm9Y/AxWxh1xvhmLb34g/tMAz8HlHdqqFRzZ+6siMb
         9GrLjVqVXBdae+8q5ALkXrnlKXbc0tFlaSrfX9ExgigaoW3Exg7FwblI3FwR/FDOa8oP
         qPeIPcbcesBXl9I3NRSLiX1jpjR9GALQNnHbsIrsfm22DmYV+zd0OZVLCJXwHcUPqBcR
         mOgXc/XZ0uLqyMaR4rTRCjuf5cQIQa1rGHsd6Y3o3R7kPjePavc3KOPthXAPHTVwpkNH
         1zKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p6ENgGOE;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id t18si480420lfb.5.2022.01.16.22.55.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Jan 2022 22:55:04 -0800 (PST)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 56D0160F2A;
	Mon, 17 Jan 2022 06:55:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7F9C36AE3;
	Mon, 17 Jan 2022 06:55:02 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id AE149F60799;
	Mon, 17 Jan 2022 06:55:02 +0000 (UTC)
Subject: Re: [GIT PULL] NTB bug fixes for vv5.17
From: pr-tracker-bot@kernel.org
In-Reply-To: <YeQ4Uz9mNkff+ypm@n00b.kudzu.us>
References: <YeQ4Uz9mNkff+ypm@n00b.kudzu.us>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YeQ4Uz9mNkff+ypm@n00b.kudzu.us>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.17
X-PR-Tracked-Commit-Id: 8cd778650ae223cd306588042b55d0290ef81037
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 96000bc956628dc0cc608696d5385ffc19e65a76
Message-Id: <164240250270.26213.90124789896210026.pr-tracker-bot@kernel.org>
Date: Mon, 17 Jan 2022 06:55:02 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=p6ENgGOE;       spf=pass
 (google.com: domain of pr-tracker-bot@kernel.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The pull request you sent on Sun, 16 Jan 2022 10:22:59 -0500:

> git://github.com/jonmason/ntb tags/ntb-5.17

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/96000bc956628dc0cc608696d5385ffc19e65a76

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/164240250270.26213.90124789896210026.pr-tracker-bot%40kernel.org.
