Return-Path: <linux-ntb+bncBDP5HDHR6QPBBPU4Q7YAKGQEUWNIETA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4135A129F0B
	for <lists+linux-ntb@lfdr.de>; Tue, 24 Dec 2019 09:37:19 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id b25sf13061064ioh.10
        for <lists+linux-ntb@lfdr.de>; Tue, 24 Dec 2019 00:37:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577176638; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLRpHf3HYYs2HnJVd7g1alLEjkOmrppP1R7d59BhjILEzTMb1vSLLcoIhhbfqoOAA7
         v1ziS6NVFLX3FSZs79pI4qjxKtN5Cz+TCcvvpo+ybxe4pMrgIQG0N2K/BF4K5WjRgYcx
         ESUdc1gmv34bgEHGPBqLaZbQIRvzTOdQkQzyHiEK65N47y0SHhGKiqRx9ttLPFXy8h7q
         Hq527eFTatyZqzrDHJ16D2EDzUB+Av099sU3QdZKlJ1wxna8BAlyQ0ol8qPYBt9g+Ff0
         S8/wwufkrEbyVZ/97IamvJwuKPIatD9SPjXfIAPsRzUPNwQWd7c+cWnbSfR2tVKV7bRS
         nvfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=o/pTmDPnNe4kK9RGRFE7GxxvH8qlqcy+gY2gFXXq92E=;
        b=W2rWZtqu3ncOm1m7z3udp3XjTDw+KsdGjkD+g+HTZVga3PjgUkZ9xV6YgrOZ/17W0R
         lwxVwFLTKiKrgcKWfYPqCCztB91H4g9P7XYx7QVagu/ThiNRq8kHe+Bu4bP/wWgjSurx
         hC0nHQ2q1pBmzWqyPrxspsRNX7/srWv6ZB2Da1cIR+ja9G0CqIDzgYHVZvse0mz4XCB3
         XcpzOeUMxiqFHQdHEV7IFlmlCsnypSNlhpW7sJp2shw36fUlghtUiARcYh6EA95bDFb0
         IHDrW50+hmc4myEp4mQ3l5Gg/uigKsQVJmdaVdZYD0BDw+ndCZwiSkKLz0ekot9ZeFes
         Zouw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=thLznmLo;
       spf=pass (google.com: domain of clementidibia1960@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=clementidibia1960@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o/pTmDPnNe4kK9RGRFE7GxxvH8qlqcy+gY2gFXXq92E=;
        b=LGyLnIh5iW7dcOAOCHnba+Wn8baAdNpS47kpajiKrdZtYDa/3kfrJ2WL8Y3nBw+N6H
         pGxa0ismUpyXAsxq6kldr68vJI+QQ+UVyYFar8BzFE0hhXe2+jaxLS7/LAiFZ0BAh7VW
         5iJaZ2vutNZCD/D8xp5Z8X1UKT9ZCkAjYoseAGZr/7foffaaLNilfgUIxScCN1VSV/lR
         FyYnJgKzduVOJXFjZAnKyGPguy8Zc7KXPTb9rq1IAbJUd7zk8hnAo5aX8pffLk8yMXPy
         rwMh2IijAO3swprKy8JgSg7GGogfjH5aCGYTjy5IcRzGoLdHb+BxgFBHN3mplnpGEhmX
         w4fQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o/pTmDPnNe4kK9RGRFE7GxxvH8qlqcy+gY2gFXXq92E=;
        b=hU26IAXdvXAlVn1Ptoebnepci3W5sRVTAd2S8U0cuYW/lRWVbfvRltEbBSNiCSB1Ds
         ii31mVFHEPyZL7rUpRlj5XPAO5N/LdN0MvlI115zDKo1DvKzWMhjXmfTH9D2SwKO/rrH
         dbBUilQx+UXcRgXZRF605HQfcs/cHMIQ1B+wta0dAykU71sGmdYeJp1wO3mpfus9bNe1
         FrmvzQ48kll/8LGYLRpZJnodkSpvk5HC3IvhMkUdUulzarVfoznT+rkwTxe3inYvTftc
         pEgtOlmCltPh/hbV3iYEJs4gWtizK3ECQq39abCeB6aAwmhl4+orY+oEVjfUTw2UkMxZ
         QIlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o/pTmDPnNe4kK9RGRFE7GxxvH8qlqcy+gY2gFXXq92E=;
        b=JSVEbtPODh9cArCBSubWl2bYkPtdfWnW15sTzJzP8rx8ztwJx3WDyjTgggLLQj0wg6
         XrjYcjLhjrvRKi/qqmEp1OqFZ2+dcKPT5m1t3i/3xUYEXTVvXX0L12S9LwBCjbdQC10A
         NUbteS9b9hzlo4THjfI+bEsmUi9kSa29EOc2bS3k+mKS7xUlXCpyzscz6vkt/r4bBcCz
         K9ae0HKLrtVao++lj0dAexCoQMeze/9hWl3+NphogAbLSW0thLAn5m6UioYZ1yzHBWX+
         LA1SCZVyt55WzJUzowbR6TpcNWE754BmSriZssREuuJBow2KqZNb+sbYR2kyseAorpR9
         c5Lw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXz8+XBXtxH7UM+T3kT3yBLvfCv4hkpt5xppityYf5tZSUWAnXQ
	sKFp2pWhdQvwDPSFNZKSAnE=
X-Google-Smtp-Source: APXvYqxL/69GaPnqFaJFLZg6uQyA5v5HIvIODKOYp8BQp9iAqDEzWJBej+i6BmJ3nE0Dcsc/qgfZbw==
X-Received: by 2002:a92:d84d:: with SMTP id h13mr28518701ilq.180.1577176638224;
        Tue, 24 Dec 2019 00:37:18 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:ba5b:: with SMTP id o88ls3169410ili.2.gmail; Tue, 24 Dec
 2019 00:37:17 -0800 (PST)
X-Received: by 2002:a92:5cda:: with SMTP id d87mr30356257ilg.100.1577176637925;
        Tue, 24 Dec 2019 00:37:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577176637; cv=none;
        d=google.com; s=arc-20160816;
        b=Klm2WwVORmRezsbZfxw0JXzPJ2fU1PiwLjNnQ1+2qj22k9gaZSVALmcITLmn+HIlEH
         zhpYYJgf+Awp5CbPALb8mJHuYHJtedqPsgx/DbkWlNm/UmRcgZotC402p5nx8XElC8FZ
         Epjc5HBf0X1CeTmcSI27/Ta0WtI3i8ed6sYNfxpAmC9B/UCYeD49YMpKTCmiPvPelEsx
         Hw9Cj2YdYx9bhm72RKLvDCHdHUdYOlj0twTr/1M5zHdYsvZakILKoSIrUNiQLmLuzHst
         +F9HqHL6HApyqjIdOOvlRUigIXpwa7OM4fXDWSpCmCyOTdG8DBWigMHi7FSJpLnFz6eT
         ejVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
        b=m44IZOp5VB8dDEWwVTzWLWWjABGUpAh6BEzOyN1PNAtI9XjNpasEpLE5TQQx4OHKZW
         NSJfIcdw35L8laK9J8g2MYpFPJvH8Rb2Eopnhu9t3DVuMhKlkum67cZehgTRZ8O5evdj
         iEsnHogbj4Rn7hX2VniJlyO+9y1I7iL0ZEpumPY9RqG+QYlbxGYisj3WvtkZsM9HEPJM
         n3L6AvoTGnTOzvQXAEfgz9zPRLzsHdzkt8u0LdxhJ3yqkiPu5f7p0WfpRhomv00C9rYC
         iMUtmBmzDrYFEeMrRGaIbwp6ws2kLgsFMZgzHllkJpQN3e5ke7pK5Ian+2zRb6c9Qzs8
         avQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=thLznmLo;
       spf=pass (google.com: domain of clementidibia1960@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=clementidibia1960@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id h4si1279266ilf.3.2019.12.24.00.37.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Dec 2019 00:37:17 -0800 (PST)
Received-SPF: pass (google.com: domain of clementidibia1960@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id v69so16051084ili.10
        for <linux-ntb@googlegroups.com>; Tue, 24 Dec 2019 00:37:17 -0800 (PST)
X-Received: by 2002:a92:3b98:: with SMTP id n24mr4582447ilh.108.1577176637594;
 Tue, 24 Dec 2019 00:37:17 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f302:0:0:0:0:0 with HTTP; Tue, 24 Dec 2019 00:37:16
 -0800 (PST)
Reply-To: bethnatividad9@gmail.com
From: Beth Nat <clementidibia1960@gmail.com>
Date: Tue, 24 Dec 2019 08:37:16 +0000
Message-ID: <CAEG=icHSiKA+obxr5hSbrz+bX3f1O1rMyddMXXp8YnqnRrxBeQ@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: clementidibia1960@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=thLznmLo;       spf=pass
 (google.com: domain of clementidibia1960@gmail.com designates
 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=clementidibia1960@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

How are you today my dear? i saw your profile and it interests me, i
am a Military nurse from USA. Can we be friend? I want to know more
about you.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAEG%3DicHSiKA%2Bobxr5hSbrz%2BbX3f1O1rMyddMXXp8YnqnRrxBeQ%40mail.gmail.com.
