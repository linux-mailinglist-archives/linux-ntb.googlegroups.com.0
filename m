Return-Path: <linux-ntb+bncBAABB2FK76IAMGQEFONVPUQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0933A4CAFFE
	for <lists+linux-ntb@lfdr.de>; Wed,  2 Mar 2022 21:36:57 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id n8-20020a2e86c8000000b002479a94c041sf953244ljj.3
        for <lists+linux-ntb@lfdr.de>; Wed, 02 Mar 2022 12:36:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646253416; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZTxipfkxk5T2Ino9h+Oe3eYK1g30OfaDbErYJKRplcKTIkJvPQLsZp6wL4ok5o3O9D
         EmtfY0EybEzOKsJGShzZ4Sbd9h5ZjzIUNeiJBJsZHsVHHdMbow6rO5fHBBIh9E+r26Oz
         OtOaMoHGforBtYeBLprJVx8KeNlfo988y9NVuiyKqw8R9qXiiuQiaH6idF5Fer3nxB8i
         aC1KuZtyL5KaqmWuzkg9YyRIvP0jdN97j3t58iLrr8ZFWnwwmM7phhbuhpZywUlZBjhh
         TlWnaN/rT0TXnX5imwY1/s5hY7gv38abEU49KSegFLHv7Blzh4EgWFrR3RhQf/1h5bxp
         HPsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=0jSng0X31xYxkIQ4igA0z3JFiL9KcmV7avSf0tENPbc=;
        b=IWjhyOrFxashAE8MpSFM6Z/knFo2m6ZKo4BQd9A33iXr6qugK7/ukwhMzcjRAeojxu
         sAcgm6GPSEuaRjwv5aSq8MlMZOxcMYzajEAYTSnL3Zk4miu7FM6d1o6jZ4vg06i9h5Y0
         z6swjjkPdf8EsQx86FsGOawya7W7wyxI9mfnWo18bRDHIpRyIJNG+D7bJiuf0qEtu4Mx
         tufy0/g4jwLu1ByBOaRNMNJPlvk9S2yZG9/cYbl2LM3IbqW5P7uvNczT2Q+n4pWNov9m
         9jhAxAGe4mZwTca909I3BQUx08BadgTFL3SecSIa8WdBD6v5/QA3QZxXVdYObBh4LIus
         h6yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XhDVurOn;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jSng0X31xYxkIQ4igA0z3JFiL9KcmV7avSf0tENPbc=;
        b=GsJbBquMjyIcKCgwDyBfGYdOUoZKjRLs+6b88I39Zj/sNpJs90maX+0JKwFmpIFk/z
         98QyOYjyXgdQzl7dB44rj+/9jWhzWa+G4eBp1aA+1kDtF6jkzlFSmbg/Nwm0LZBzyY5c
         v3rnZhcpEYGcowKRAhLjPzdHfkYng6VEqXx3hoSovhxcFWkfnecuOTgFIGR93Q224ewq
         xq2n2+TJHVZRN4l37RMvi4ijTIbS9SZAyoH/bGtAEqNnVMUDG90oREUgcYm7h33w7DJh
         t9tREHWZsNe5dwijT/cREM9uDJbZOhv5tPUXxFoGxqCui68woJDDsW0ecDuc/38ZxHvk
         hWlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jSng0X31xYxkIQ4igA0z3JFiL9KcmV7avSf0tENPbc=;
        b=idHhb5tOIRviUKQeRtN8oSB1FQwAM1j7i2cmAAdcNb73MMPY/fwpo3CO4if+CZwU8r
         QWiGzVTBrPY4d2k/TqSavEXkYfongfSrwrsbT8dquM8f8e/f81cA69NCo5rfWNqaG00l
         M1erwtywLRnchDoyTZdlZrlHqsafjXsd75r+FCDwYllVuBvTPqgNZP7E1RV7imbsOONH
         p0yzyO6XpCZ+nfWz5oWnvWpWq77MfeTaHmcqPH3BwYDTH3MyXkuyo7JtdPbrBeYAiLdA
         OUSx9bZQckyqR5eAzMR98esRxsvxGzsOr1tp8CMESbTiaOYveYBn7kI+IE89XNhDio4S
         o/DQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532QHY7IQhGfl5MquwVK4zgh0/SZT1hOBeWJx98BXaseaSqgT4cv
	2124wxElaookk9y2g9xd4ig=
X-Google-Smtp-Source: ABdhPJw8IGeRApjlE/xMyj0ONc4eWoTB1f5eGJl2JgdarHuHd6zTYQA6SyGduUM6OT7XCQ3XkOk0uA==
X-Received: by 2002:a19:f618:0:b0:443:dbb3:d559 with SMTP id x24-20020a19f618000000b00443dbb3d559mr18799285lfe.448.1646253416484;
        Wed, 02 Mar 2022 12:36:56 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:a12:b0:246:48ce:ba15 with SMTP id
 k18-20020a05651c0a1200b0024648ceba15ls68556ljq.3.gmail; Wed, 02 Mar 2022
 12:36:55 -0800 (PST)
X-Received: by 2002:a2e:b611:0:b0:239:2410:e61f with SMTP id r17-20020a2eb611000000b002392410e61fmr21112719ljn.319.1646253415596;
        Wed, 02 Mar 2022 12:36:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646253415; cv=none;
        d=google.com; s=arc-20160816;
        b=iiU+j5cJEWAIjaDOJV4F5waK/qgZkjMWGYzBx2qP3wbgn5YkO0SwjyGi6/cRD8aruv
         PlyqdSh0p0C5QFaE+DdKa5grxIz+wwTFbDpCK1ncqhCDQDsm/MihXx7lOeuLUGmVnVgi
         8s3JPo3mg2/eteiLhsrEvMJz912XaxfAmQtf58KiDTV2T+1ixFTudhKlK2rytDZvWM5b
         jt36+yyz997BZaiWS5bA7e8PqQYfH644aO+fzgCyVkHaEUGTn/Oa+AQcLzjfoky+GoBI
         w7dgWDZrw4i61qMk4UQXsIiPt8kCaXg6Q+Z6bFCN5SYVGBsZxhK5vsBOj3x/fu5IHf/V
         ojlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:subject
         :dkim-signature;
        bh=2HuljAcbFU2zOlCGhMsy4omuFwASLPe3opfPiHcKAyM=;
        b=TRvxkfP/h6PFZKALVMYBY/FGSJdw+DJ0p+RvlV49zqgsnNY/bkzdBt3jppK8jjk5ux
         MTj73N7MDC4W5EKo8MrRjQoe6DeL/eCGWjEaWRkiX+5lzG8OrJRxk6COMOXe1jbvnV6N
         DcC1zqpFEg2XsBa5xQSuibUETnO4Drcu9oAPuFN9dLuCbRE0a1WP98TUUsuvdnFJwu49
         am8jiG/guBDiCQp07Yll58DbRNwMbterF3urIPofydbIyu2SC4tQUqGakbySa990YbZ1
         g4NYFyslhWgeGsmZ4HM8PRS5ueeDHLpfTSGcoed5jjGjulsEy07z6KbMTEBnkV0FOvaa
         Sz+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XhDVurOn;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id v12-20020a2e9f4c000000b002463b896be4si2191ljk.7.2022.03.02.12.36.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2022 12:36:55 -0800 (PST)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EB4C7B82221;
	Wed,  2 Mar 2022 20:36:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 943CBC004E1;
	Wed,  2 Mar 2022 20:36:53 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 7F5C2E7BB08;
	Wed,  2 Mar 2022 20:36:53 +0000 (UTC)
Subject: Re: [GIT PULL] NTB bug fixes for 5.17
From: pr-tracker-bot@kernel.org
In-Reply-To: <Yh6O7wmp8HCjxOn3@athena.kudzu.us>
References: <Yh6O7wmp8HCjxOn3@athena.kudzu.us>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Yh6O7wmp8HCjxOn3@athena.kudzu.us>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.17-bugfixes
X-PR-Tracked-Commit-Id: 9b818634f8e7e0bca3386a50b1fada7a49036408
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: ae5f531d1766a2cc98857707671223ff1284236d
Message-Id: <164625341351.15521.5087165913521187758.pr-tracker-bot@kernel.org>
Date: Wed, 02 Mar 2022 20:36:53 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XhDVurOn;       spf=pass
 (google.com: domain of pr-tracker-bot@kernel.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
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

The pull request you sent on Tue, 1 Mar 2022 16:23:59 -0500:

> git://github.com/jonmason/ntb tags/ntb-5.17-bugfixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/ae5f531d1766a2cc98857707671223ff1284236d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/164625341351.15521.5087165913521187758.pr-tracker-bot%40kernel.org.
