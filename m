Return-Path: <linux-ntb+bncBDB35KMNSQMBBWVCUOGAMGQETSJUF5Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id A22F8447AE5
	for <lists+linux-ntb@lfdr.de>; Mon,  8 Nov 2021 08:27:23 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id n17-20020a2e8791000000b0021896c29706sf4420770lji.12
        for <lists+linux-ntb@lfdr.de>; Sun, 07 Nov 2021 23:27:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636356443; cv=pass;
        d=google.com; s=arc-20160816;
        b=aa0mkp9CdQV/WOfdcPQPV3KCovNluRGcad7NqDavyR1D5iuBhZBOHGdKRw4ixESP3R
         b7D2Q7oIzm4FP/zmnvXXZwwFpXc4vN4Eafmz5q5eNR9AKpB7Mnc7pZmlTPqZM35w4z/0
         VN8xU+ODTaJp6BCdZOa5OWfduHLTtYbB+zzgCgbucPp8wo8Ed5n1jndxmM2aELEg/GAw
         r23nRRgx41RP3vLXVYfDhIgrG2oOOIuOea6xI6NiNVGOtc/lf0gIg4g3zb43CbNVM9TW
         +7qk59bqGjjqRxRtiUSxgK+l/Bjcy616CZYb8rXn0oVNJZju0FfWoy4oQUBx6ToVDFwO
         3Abg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=wdX7++N5f/Uk7ee2rm4MJ2xcGVNGVwuDMgiv1YQiKN8=;
        b=qihzAPCpTs35yrPRkhZJOYVgXk0GqHFgq3tAgc1L1AXfHzB2SC8nVesN584/Zv5eu8
         PrxbGhjh+ulJhOAk8wT9mPhB67WTHGoqiPSEqiCqx0//g3B+daqry6HyJxttO/7t8fon
         3LPm4lE2cwxviJB2A7MOwJUTQte73uKmrqBY92brdLKgIUlrIx23h25xa2Pt6s5W4/WS
         syXhLmG91V8XgD7JOhzh701hmNgHjwwsj8mRjqcPaKq840fE5j1W/jkZfS3ZioqlwiVT
         kJBeZzzrjUk8pdttqToUSmXdjtZgNwHZsGxt+3+LoCY6RnJn1iETazx7x9mX8W5yZE6N
         tI3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lohGAXI9;
       spf=pass (google.com: domain of ziskoraa@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=ziskoraa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wdX7++N5f/Uk7ee2rm4MJ2xcGVNGVwuDMgiv1YQiKN8=;
        b=Gv5foG950UQHNah4S5w80/LcqM0w3FVN8q1PvE/95YNJEueaUwqHj3fGPYoh7xJ+4a
         7Lh7yOYQZAFY9v1hXMFnqAgDx4M3IeNlLieO895vPwvLsVLVrYzdUyJ48Ozzt9qiV9es
         LcEgWBue4tR4k9dfH31WZ/D2jdgNaw+FU0RYbZXkd4Xn5QzaQvSiKZLge5VlLqLfjl62
         pFguHhTEFkZQyQp4EM1TMDp9aPB8KsAkloGVCEur/bLFPoZmkEk+kK/eqYwxtm7jGWxs
         b7hKKm3Q6VLchiCM8/SFG8sYtO/JLys7v1SwHZVx1D4hcgNHzDonqvzUkyMCcsxXw/Yf
         DxPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wdX7++N5f/Uk7ee2rm4MJ2xcGVNGVwuDMgiv1YQiKN8=;
        b=QOOCKhNPSIa7i6lXrFfgHj8B9yNP1270YAb+Q3/9oYpDq7LnYjh3TYLIkkKqiydLSv
         nOd2Np5bdQnFDcfe5snhMGIaIKVrh79KxgTC1TzO5iB5qDwSCqn9vxRg8rQGFPsoBKCI
         71Je5WT/r0qqBgB4czDy7Oa6QuRTMqAusuvkOzWiTrWbU2E3HbuciWvIOpMYUQJnBqrC
         3BUHHvN8s4Ki879Xh5IWy4SWziHTdfR5LNqBEjPIMVTfCWIjUGW7T1luj85BaefJwWDx
         jOqdugrn7mFvhqoY3zWrBOCRXhN6J/8FWaBHdIJEeU6Y734vEjky1EdFvI7huPCrS1TN
         faDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wdX7++N5f/Uk7ee2rm4MJ2xcGVNGVwuDMgiv1YQiKN8=;
        b=W4JWx8KOoYt2Yeu9GB6FCVRkCbtMlxTDqNuKFEhW6UkQ4OiTBF9GWMRQ4BPQFkyEiE
         z+pyP9RSV4AUFYv+TWXrdC03b3r5oj+6GMAs5suOCPodHWewoDLdceVOkRYVw9gMvsYU
         HxHG8qPWUlGA+mc3xct/vrc26xvJVxLR0hVvZkcnzJLIWdSblqvpF+fSTKo8XxMXAcRd
         dZ0WvPvyZHWu5CwyOhTGIzACIORZu1CvCENJ4t8gD8axC0vZCLUvuysgvxfF2qQR21JO
         1fMXt7rQDWUPGKK4Egtm/TBNMJ2oPRAlEvzFjoAjBwoot+v4GPFG0cE8YZvmPo9RRl1y
         o5qA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530DQoD0Lql05tQgDLTfHwA00di06pSkoJmz97PNtTC9JwBchK++
	0X8OGyRQUJjgCIqNnYOXjJw=
X-Google-Smtp-Source: ABdhPJyyej1hs/rnf2P2nJMPNyTV97kHYJMjNhBxf25X12aR1wt20WUL/zz/gxJPcnNLXTG6x32igA==
X-Received: by 2002:a2e:a365:: with SMTP id i5mr13578682ljn.335.1636356443137;
        Sun, 07 Nov 2021 23:27:23 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:7606:: with SMTP id r6ls2431688ljc.6.gmail; Sun, 07 Nov
 2021 23:27:22 -0800 (PST)
X-Received: by 2002:a2e:9c02:: with SMTP id s2mr51512902lji.113.1636356442056;
        Sun, 07 Nov 2021 23:27:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636356442; cv=none;
        d=google.com; s=arc-20160816;
        b=Ml3ynFfn+F9MvdztLoe4Dum13dd25SjneLGDaFeJ/DSeOd5W21qF1lS6DEeL5S0Y29
         2Ctt2LcxVE7W4ihviDapBkr/oNnkKEhxTWaugcrCsruaeEtxAIv3CAHGFGhQBXQQHCq9
         H15bkMl3L7PZkDtHbQiMXz62+1r5F3uPAg52nC/mwEpj+gIcbYEmXD7V3OQeJnWO11sR
         7eRLOm5tyaEXxhmUdwNTyntscU1n1A5VW3CcJ/G9tgJbYo/wYqQmxrcHqC5SnEGzy/GJ
         sz3048HB5JHNObFEtuq8CSvQxWi927YpYqWG6/dOMP9oZ94zqZHovJr0JzGX8t62v9Tf
         NVZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=gS+G2bXPLTc8QV9oSOsVFPfildfSifO+gabOlUjPn+8=;
        b=tDBIPSKVU+5mBehGG11Mj3n1ZTqVpsjKso+CBnu00m8ZTCMYQ4qHjeFazsywQ2QsKb
         GcD5cU+0U1XiHipGDGuiFQjWc2AfbagbfeteS6MupVuBsAbySl15oaLHn5GY1K1mqcPB
         XHqcnvyXi1PH1qDYX9JkSZoxPD1RIzMpHVwT4Q2DRVtrGSwEG1MEmpWy/lhh7sCtADQL
         4l/zEYTZuZG7vgZc6Ve51KlzkxiabP26KolhnHeNttTl0R8GAs+S7tJEEHMDQVkrWnt0
         TLjFQ4OJfhbKxPybVV8TeLOYMQAeyzbfzLFxYayJ3PU1Oi5/yCp/Ibv9XxFtpfH/NbIC
         5T6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lohGAXI9;
       spf=pass (google.com: domain of ziskoraa@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=ziskoraa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id z1si470200lfu.5.2021.11.07.23.27.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Nov 2021 23:27:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ziskoraa@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id w1so58922473edd.10
        for <linux-ntb@googlegroups.com>; Sun, 07 Nov 2021 23:27:22 -0800 (PST)
X-Received: by 2002:a05:6402:557:: with SMTP id i23mr66769092edx.176.1636356441798;
 Sun, 07 Nov 2021 23:27:21 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a50:2501:0:0:0:0:0 with HTTP; Sun, 7 Nov 2021 23:27:21 -0800 (PST)
Reply-To: mariaschaefler@gmx.com
From: Maria Schaefler <ziskoraa@gmail.com>
Date: Mon, 8 Nov 2021 07:27:21 +0000
Message-ID: <CAJh0FjiFL7uihMBL6ckYO8FJ6tnzM+tBivU2c60yDbG14LZLeA@mail.gmail.com>
Subject: MY HEART CHOOSE YOU.
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ziskoraa@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=lohGAXI9;       spf=pass
 (google.com: domain of ziskoraa@gmail.com designates 2a00:1450:4864:20::530
 as permitted sender) smtp.mailfrom=ziskoraa@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Given my current state of health, I have decided to donate what I
inherited from my late husband to you to help the poor and needy. I am
Mrs Maria Schaefler,a 57years old dying woman. I was diagnosed for
cancer about 2 years ago and I have few months to live according to
medical experts. Email me for my directives

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAJh0FjiFL7uihMBL6ckYO8FJ6tnzM%2BtBivU2c60yDbG14LZLeA%40mail.gmail.com.
