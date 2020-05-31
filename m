Return-Path: <linux-ntb+bncBCS4BDN7YUCRBLM32D3AKGQE3FTWPRA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D7A1E9A4D
	for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 22:03:59 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id a5sf4798124oto.4
        for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 13:03:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590955438; cv=pass;
        d=google.com; s=arc-20160816;
        b=KTeCTg9zKrKL9fVg+m5jfEkT+0uOtrs+uEaKhNSgMVapoc9aJY/frwRksS+R5p3wMQ
         zmQvgarMJYRcm4OepDH9lXKQuUL5k3hG6RrGzGHARlDCgggFAbt2WwxKmMgxNJjKn9Vt
         Bb2SdSkHWz6nzsbEU9ypOcLh3pJR3RnuE4g5LqefyDaXpAHTjM/hzpj08cOuej9UfazW
         BXJwaj3cG6+49ibBCGAMoeIWAvQBB41EJgeKLDAdcyHgl9ihV9jx5KHsozUdFqWn4kUX
         YEwOOHtTaeS9sDeE3auu971kOkpAezJIfkRtNU5tCBAJ3rPi14/OHY+VYZrLtqZA7NGC
         OR0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature;
        bh=6Wywtp8+31H2UtMoRhQCIjRtaCr6/oxnM8IHDcze5EY=;
        b=tJYOtwMruRnm8JQkPp+v5bvfbSrKa+YdwdNYwNw4eZK78+ckQNfRz2zwXI7w3YnGyS
         PazCM/ww/TLhEm6+B/nwH/JxmGOtJNbDpYqtCd5/pZkmrj8C0ZOYgeYaGiFln4W64VvQ
         lWM6nGxrwMSzUOA284z2tPYxasM3UKQL5s9kQVeN9HsF9/k+6f8bRJY7eTJs0M2KH0Ci
         nzoXp3ygg3FcGS8o+rFkvdN4amYvDZiITi23FTXWot++g8g461jMMg/gBDBYkWjW4qNL
         YcIpF0qUQi/Liq5HZ0y3YJnwMJP9L6nWsPfNkbAUDADOxoeJxHx9W+riDkBeVJgxASxR
         9kRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=QFbMDs32;
       spf=neutral (google.com: 2607:f8b0:4864:20::f34 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Wywtp8+31H2UtMoRhQCIjRtaCr6/oxnM8IHDcze5EY=;
        b=GX6Wj+mIvNV+AgDn96s1hPlbhrXiqY/vcp+HCetXvOga8CGCD+kU5SX36kbpCZ8igo
         cf3DwGfBolBoZcixX1pR5jqZffjZEIv7x8EIJinmiBX2xa6xXExXy8+HlnDkiQURCCMs
         U7PEUz5J26uWRpUOSloM/qCYH3M3HgbZAQIwCCyBsnNqS4tEPWStIe8jFx2ULhOoSEdV
         Pqqr8saGOFH67XwCe2PKI/8aoukVTsL/BK3IgGyDc9SjOl2JyAAJQwcSXG3JTJMTkWuj
         joXgKyz8cyVrKEK2pXO/IIESejgZW9NibOulj2/Z77uoKJ0YQsvZOwb4tUtg+1ZW2bMH
         ymXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Wywtp8+31H2UtMoRhQCIjRtaCr6/oxnM8IHDcze5EY=;
        b=UQXU5fxSIysTqyHaVKSInkmPv4fW9eAccICebkwYUEpFEyAJ2y1r/rqdnLi+5x7cqT
         D/4knITW9QU9YWCSFgrQ7LqjnykC6cWy/MbzRD3yboFBII7j8bwQY6PW5w72pVVZKlsA
         10JxfcYk9v9nk9fPZ4vQX+ij89/GohnmYiRokmS6yDJl2M/4EzwsOdsXqoJns25rZZi3
         AxJkTWAj7/yuGtYzF0wrWGc6zT3OBkeHOP1nbHt+7jp1atHJeGQ+UwkVEdEOqlcQQ1u3
         H+Jd5w/HKfK6xbqFg+RvuDSkCUD5F4DRpo7MtR2Xf01EUHJmQLVa2O4Z3BzFqQbNhawI
         BbUQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532DcFPd5EWyEzVF81m11JBdXOrGr56Ry5cG56wFgjOUh4KbejiM
	opGZNqhdzetlCGCIHCRDCAU=
X-Google-Smtp-Source: ABdhPJxpnGMIgTeVX43e9HGaLyQve9a7J50WBzchmFnlGqg/ZXkhZapPC00LJDM/nOW0sdf3Jq5BZw==
X-Received: by 2002:a05:6830:12c1:: with SMTP id a1mr9344336otq.123.1590955437984;
        Sun, 31 May 2020 13:03:57 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:4fc3:: with SMTP id d186ls383398oib.1.gmail; Sun, 31 May
 2020 13:03:57 -0700 (PDT)
X-Received: by 2002:aca:fccf:: with SMTP id a198mr1558078oii.91.1590955437707;
        Sun, 31 May 2020 13:03:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590955437; cv=none;
        d=google.com; s=arc-20160816;
        b=J6bVpGbY5lGC2GWvEJ4ErA1sYvLwFguq3mkfncZxSkvxAtt5R524/tdLePMk1F4yuf
         fDf0S8YWyiTUH2OoEcYQqKk6trjMivQwiGlzTUzxF7GspjQ52Ic7wR2AsWtvUUdrFR2A
         qHNY/ADf1sfkMhl648dt4xb6yq9X77SuAb5lCHdZFrvKTKZBbW4IanwN02asfiYF9qD6
         NhApmJFXC9xcOGeqFbfQSPKkbj0Jd/9VVCOnKq+yEJtNQrTGf3gWQId4VXGpJ4gKKYzr
         xW1V4GFgWNBiZCkKwWFtaf4Bd/wRtCj9BA9DyAj3SAeXI4bpCMJSKtFd76ZN6wYARVY0
         7fKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=rB7/aj9Q9QiDZcNX80UZNGeMowMRtGh2ppXNjDZVOTg=;
        b=YdjX9HZ7zevwUsJjgs6oqQ3QhOht1N4wx8e1IcHCLNCkiv/670q25y64ykzx1NcVMK
         q1V1tk9EyDNCRodlGiJyDtaNcaN/NArs7dDtR3JsqLc8rML6kR7wIoUatXWpKzDJDoaL
         rc9cOLsEWBZoHM/+U2uDWfJOOIs3qdcExTLEakqxsFOq5VlqS6vxqGOYEQs+N7DWYvQs
         zP5xDrHAaoehyLt1Dutq2cLtWTtfO8WVqLvEV7lgd1+FwQRhvdsi1hmeQHm/nCoffzpz
         jTJcZ3jXEpuR/POZIXXb1iJMTYXjq+jU1uGVy/1yj3pfcfgG1otFQN9WoJUbONnUC4ph
         SwRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=QFbMDs32;
       spf=neutral (google.com: 2607:f8b0:4864:20::f34 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com. [2607:f8b0:4864:20::f34])
        by gmr-mx.google.com with ESMTPS id e23si1108814oti.4.2020.05.31.13.03.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 May 2020 13:03:57 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::f34 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::f34;
Received: by mail-qv1-xf34.google.com with SMTP id dp10so3528886qvb.10
        for <linux-ntb@googlegroups.com>; Sun, 31 May 2020 13:03:57 -0700 (PDT)
X-Received: by 2002:a0c:a899:: with SMTP id x25mr17055100qva.114.1590955436620;
        Sun, 31 May 2020 13:03:56 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a664:2e00:a5da:931a:7f23:1d4d])
        by smtp.gmail.com with ESMTPSA id g28sm8490590qts.88.2020.05.31.13.03.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 May 2020 13:03:56 -0700 (PDT)
Date: Sun, 31 May 2020 16:03:54 -0400
From: Jon Mason <jdmason@kudzu.us>
To: linux-ntb@googlegroups.com
Subject: NTB changes for v5.8
Message-ID: <20200531200354.GF4620@kudzu.us>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=QFbMDs32;       spf=neutral (google.com: 2607:f8b0:4864:20::f34 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

I just pulled in all outstanding patches and pushed the ntb-next branch
to ntb.  It contains a lot of changes to the ntb test tools.  So, I
would appreciate everyone taking a moment to verify functionality on
their hardware.

Barring something significant being found, I'll send a pull request
to Linus on Wednesday (assuming v5.7 is released later today).

Thanks,
Jon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200531200354.GF4620%40kudzu.us.
