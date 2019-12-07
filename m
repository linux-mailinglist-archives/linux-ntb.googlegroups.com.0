Return-Path: <linux-ntb+bncBCS4BDN7YUCRBVNZWDXQKGQE4XCBXHQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A1475115ED2
	for <lists+linux-ntb@lfdr.de>; Sat,  7 Dec 2019 22:42:46 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id b70sf8608500ywa.15
        for <lists+linux-ntb@lfdr.de>; Sat, 07 Dec 2019 13:42:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575754965; cv=pass;
        d=google.com; s=arc-20160816;
        b=FsOegqbEdbnivXYxQ+35Fni7bXpOeK9GEOoEaRPEsuepW8mSX3h36nr54Fn2NxVrR6
         GDrsKXEboeQxaqLzKwESpGuNFQO9woy3qf5oJvJFXJ0PfnNP2vAyr/n3DVkvrw0KRMaR
         Y7pDBX3HtaqiAcpyvHmFjgnRLP0pZBJqQqqEjasXPPtU2tPbzuJY2cvsOnBAd6faEUFo
         B8wb/fB7vXGLT4g1zwL6W6c7P7nv6zhn9cyH1VTqOuaqiXSLJUiYTvVlPo9InN0r3FY9
         8X1jF8pYDnm4b9WZ98SBzsQBGCPBnBWKqxDSekCP2jfkBrF60mdKIIqxjZe+0/HoNfa+
         zseQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=Bq8PFdh/5K8GIBL6Orbah5JKMuMhgw0/GrUEvtVbIP4=;
        b=pvtxsra7ZWAcA5ZtDcSaQ1JPks0ZdRxm6lfNvfg/HWJ2wpYcWsf/p7e3ZH6Ux/R7d9
         0h/ypFuj6zcqR6tyEzABEIQj2NBZSpwrBI7RzBDZw9zFWDW5GbDZtmCRByjiqdWjQyfT
         KttdBt7NbWR07EbWGtIwPZWE51zYwqxtIu9W80Rtl67T2f+b0YUVlsjv9XBSRYZNjvc0
         XRLPv3mPp+TZWcRHBiXTS1JIC2yhQmNKQDnwuQdOPnR3LA0hzZ0gyIwEP0jICeeEoAjt
         giwJ2h5AH4EeTVj0Dx+VBrGwtmhyr6RzFlGsWeQRPc+s6g6ThhGQ5raZqdaNPSFXsNaA
         jJuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=ufHC+NWg;
       spf=neutral (google.com: 2607:f8b0:4864:20::830 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bq8PFdh/5K8GIBL6Orbah5JKMuMhgw0/GrUEvtVbIP4=;
        b=fzt6Cqg5+QViVJtIw8atl23x4D/PEGoblKnMDkZVuT8h02wDtprHI0+w0AKzIHdfQ8
         SCZGvkwfKuf/0X0et8TZ0kTedIGvFQlmVLwlE3xJFTY/TBwUuZSfzRHMf+KV5JqXmsZr
         56F8yPODWmCY43Brw/S/StjLehbyMivhPHv75TDNN8U1P+APNTV4f7Sq+IFskjazAW2G
         ksqKcp9daPt/T+xczgxSy65DQqUdW1I71aQltS545fw7iolHtk1RC0xOumnM8M+COR1v
         PDFp4AQHlnnVYtQ4tONV7Ml/HQYeBfDyfc+sjBDg1yW5V7YJrxYcvZx2X1OMtqbHC6r1
         j2eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bq8PFdh/5K8GIBL6Orbah5JKMuMhgw0/GrUEvtVbIP4=;
        b=oO3eoO7kEZe7vAkYrkTRzFdsVGn/lA9gVzUPf3SvkICk5vyJBvoSRLHna7p8dvHGVW
         islGIbRNFj2JAnyCLcZfmWsKi9Oll10zwLptGHhAGq5ZfQiJFSE7uqdnkgOrKalJBXT5
         dCjBO30G2ETxiTP8hYJt1V93369lamyeEXEa+HCQis2ymUciobuyRoVO4yLgpxbftDuf
         6krjlSl5CII0PPOIlsW7Pp72ufzl8yd8+SXO1OPnbUhREecmSMEQ2njbB1NzX/f5QWiy
         oksfBsCo7vWpNOqspjP/6+hTZG4js20Yjh4jUNjXWtyyso0Fr0wZcwuwEW0xuBgsI6ix
         4zfg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV4zG+yIQ40nxXmy5T3FmcDhd2Bhx42yhmfGMybaL9ey+nSpUPi
	5EcmxZxQUrtrCQ8bjJYSQGY=
X-Google-Smtp-Source: APXvYqxKogZIjzQrZaZQ9R9BgihwsRJlKoLEVGD95RWHtMKXCVdBaebY/S/GW/B+tM7R6r7bfFmexg==
X-Received: by 2002:a25:bc8c:: with SMTP id e12mr14775739ybk.487.1575754965356;
        Sat, 07 Dec 2019 13:42:45 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0d:e851:: with SMTP id r78ls1401169ywe.12.gmail; Sat, 07
 Dec 2019 13:42:44 -0800 (PST)
X-Received: by 2002:a81:78d7:: with SMTP id t206mr16412522ywc.104.1575754964822;
        Sat, 07 Dec 2019 13:42:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575754964; cv=none;
        d=google.com; s=arc-20160816;
        b=Ka+PKpG56lXBtMuw6nDvB9iJJ9kIPbKYqsrwtYJ6lsfrjk+9NBlGYTr0dfopfnD21H
         XQWEL2cFX0p03Jk0NnqJQ3CBEobcK9ZyQ7XHyHgzFXwdVE01DI/cKjIhnbtQyLPJIBqt
         gU8r4TZLWvzoUQomnVrV15YRXK2iocwQwanZnrKhbzrFzJYK2LgLSxdSFWFiA0gYOtlW
         GwcuWzu3gzkPiQl3I8VL9+6vgSuwvZDMmlOi6EpjFhFTy93iRUCIkWsWedEOF/HMOV6d
         RKoLjQ10bnH+tGiGsOQLctF4hz0obkVsgVkhj+lH1g3yJ98rM8a1cQeB8SgbUpTVdZFL
         DJIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature;
        bh=/FNfGO9/5GkHxo/iV/FuELwfPIwUxQkTsttLHMUCdbo=;
        b=ovJxSWdKVrooIob6/jFXo4n5MV9+zDCixJw0QQ+GnzTHpzuHLjEoDKR3/3toO/BBTB
         wAmqDLkR9JdYCdkfbnGkY35V5ZxqbCx6dFmaMW0Vify7qeCHAGe+2KgZtOzY7DqHDg33
         XeuMl8gWeLJFcwJY2whucfv93B4aAY6zWa5Ltfiz+VKaFmQLKa0fVYSKaM+yWsCbPqbz
         MSSJ6WGQoWQOURIYULttF5Sp9x8GPBBc10E5zwYmrSdx/q2vH/aTkNOW8ZBPWFj9AR+d
         Qv4xFs3Pnw6+Xw1Id63EPB6dxstF7qdBDP0eNW+SOYiDfydggf9dPhuCt1Ar9h3z2dqk
         4F4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=ufHC+NWg;
       spf=neutral (google.com: 2607:f8b0:4864:20::830 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com. [2607:f8b0:4864:20::830])
        by gmr-mx.google.com with ESMTPS id v64si781021ywa.4.2019.12.07.13.42.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Dec 2019 13:42:44 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::830 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::830;
Received: by mail-qt1-x830.google.com with SMTP id g17so5200860qtp.11
        for <linux-ntb@googlegroups.com>; Sat, 07 Dec 2019 13:42:44 -0800 (PST)
X-Received: by 2002:aed:376a:: with SMTP id i97mr19224853qtb.44.1575754964477;
        Sat, 07 Dec 2019 13:42:44 -0800 (PST)
Received: from graymalkin ([2605:a601:a609:c200:eb24:d1e6:7c8f:65d0])
        by smtp.gmail.com with ESMTPSA id m6sm7368023qke.80.2019.12.07.13.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Dec 2019 13:42:44 -0800 (PST)
From: Jon Mason <jdmason@kudzu.us>
Received: by graymalkin (sSMTP sendmail emulation); Sat, 07 Dec 2019 16:42:42 -0500
Date: Sat, 7 Dec 2019 16:42:42 -0500
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB patches for v5.5
Message-ID: <20191207214242.GA22441@graymalkin>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=ufHC+NWg;       spf=neutral (google.com: 2607:f8b0:4864:20::830 is
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

Hello Linus,
Here is the NTB pull request for v5.5.  It only contains a simple patch to add a new NTB Device ID.  Please consider pulling it.

Thanks,
Jon



The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.5

for you to fetch changes up to 9b5b99a89f641555d9d00452afb0a8aea4471eba:

  NTB: Add Hygon Device ID (2019-12-07 16:29:44 -0500)

----------------------------------------------------------------
Add Hygon Device ID to the AMD NTB device driver

----------------------------------------------------------------
Jiasen Lin (1):
      NTB: Add Hygon Device ID

 drivers/ntb/hw/amd/ntb_hw_amd.c | 1 +
 1 file changed, 1 insertion(+)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191207214242.GA22441%40graymalkin.
