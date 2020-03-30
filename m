Return-Path: <linux-ntb+bncBCS4BDN7YUCRBAGARH2AKGQECQ63JEQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ABE198616
	for <lists+linux-ntb@lfdr.de>; Mon, 30 Mar 2020 23:09:21 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id t10sf18044375ilf.2
        for <lists+linux-ntb@lfdr.de>; Mon, 30 Mar 2020 14:09:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585602560; cv=pass;
        d=google.com; s=arc-20160816;
        b=jIXwEtHmrULJX6KLCx0/BjvvypFqzGPASK7I0Dmx9HAFoD1z3p4LDx0zTfU4VVyJkT
         z4yenEMx2kVc8G4+84MH1d0Qc15Gc5OzRxfMI7nb+w8hUQFzALCiEIqqaOOEzs8u56lq
         LenbP5spUEuhm1/AY7TnKYE40zKyKOXau6axvz1djPU2MJziiSVxXBHTMfHsEg11K5o7
         ZXIARJ66QQSfokGoTVlCRmP8fV340Nu2cr/DsgJn0Kj4OikKMfXDyRnWvBBBYZUtQ/cN
         5WNJrWeUMKndIp1/fSXPmV+y/K9HSEyOtpnNMU4awk0w+2pO61IYehi7nlsokygyQVzI
         yJaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=GQ3CFyamLmfUiRT9yoTXAJ6K6sk0492m9WivzjLA9tI=;
        b=FSjcs2DMmNpv34e1v6K3OtCWW7bFV3zwyYgvVjUEtavI8ytLA4z7+6xDGaikQAZK3B
         OB7ay7NKr/D1bVWhIWK6rBZDkViIP/OfLXxdQA5xU/LoGXnJ+hQsntEUTHpArGq0CH7D
         v8T2dTStgSxut/nm8wBn7u+uCQCuQilQ4V3nQOwF+N2Ou4YMrR9qXT9gtl11WKQx8yAq
         Uny20psCKIfSkpouSU5hOv6ucLynLT2yXomxhsjHezhtvq/6DF3caVjruXoOphJbGQxQ
         KdViVoihAxwhk97OF6ucNfDkRaR9bCV7zepMlsZM/hWEu/Rjbkcsyp8muv0JZL1+6i2o
         MIqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="n/qvynkE";
       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQ3CFyamLmfUiRT9yoTXAJ6K6sk0492m9WivzjLA9tI=;
        b=Kax95WRz9dH6gZxNZgTRzgGzm98lKZLQHnNrHdaO4SCpf9Pv4F2SXwuBBHy07kdx6X
         N4Z2PTFEp8J0W/BZvLPFIwR5pr7YlS9uV+rDL9+KFwo4A9TNiKgCzMcsg9xiCC4sZ89J
         BxwGXpIlukKbiLcBurH4DrZ0egpOXiritxIiidNAncfuEwU3SmWXbmv9L+danI6IukKc
         AOtYNMPdD6S8hAJW9lmopdi1N3u0m1yme5YC+EPL+WwdOHYWJkvJZh5aUTJv74/Zd1Hm
         NE6flH5s3fbs4ojNI1yW0reC8KBfXwBZSrIZnFJTvb5aHJ8+tlKOBNaaI4WjRAoxpYSr
         QWXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQ3CFyamLmfUiRT9yoTXAJ6K6sk0492m9WivzjLA9tI=;
        b=Sfugv2USRPTvCWmIXBbQt8/VyXrW3Ml9efR+wk7IGvyngaSlVi1J5+l/FyA0ukIlyG
         JTCqVlG2HyzBMwSLBqEhwQOdGltqd1Hjo1FlEG54DuVa+3Z5Rb+juxoUfMerBI/AMOIc
         Fmkj7oM3FB8JbMc9T9CTBUDladpvixKR1OyWqW+vgnmUQj9LZtoessg5TgmmEyV3LPJQ
         gQ05JHAwf+bbcas6AIyLMCb9BCoUWo1H9EvriGxcPo4jctyYYDEpGzBWYIJQHlxvRumR
         o9ZRtPvYjkWiXioGZCae/9qyxWI78H5HXCfmhfM+tUHVcr2LoBfcQqUEbRIl4nzL5Ybn
         yPTg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ2z6Yukb324k8bHXqUkAmGZahHMzqHkUW306N8Rcf09a0nyoDkj
	QRB54kofrEGuNVAX5T6fNVg=
X-Google-Smtp-Source: ADFU+vucgAf4V8zw95ciCmVSsar1jqzpmDhoceMghD2dvVHf08r9wNNjrlVck++4bJ8WS/3WJvKSug==
X-Received: by 2002:a02:ac09:: with SMTP id a9mr12779554jao.128.1585602560161;
        Mon, 30 Mar 2020 14:09:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls5871757ilb.4.gmail; Mon, 30 Mar
 2020 14:09:19 -0700 (PDT)
X-Received: by 2002:a92:8183:: with SMTP id q3mr4732587ilk.43.1585602559774;
        Mon, 30 Mar 2020 14:09:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585602559; cv=none;
        d=google.com; s=arc-20160816;
        b=P8YLk2t51CWGU6MpojLbG9P8r0waEXLEif5IKHloivk+FmpkEOA+avAPR+2+wlrl6C
         EGNY9XOfZgd4INmK30UPwQJAxymVb1xzEDkY+V+CCPHq/EJrhSVFTzT05gWGtUhalTHJ
         hS682uSWvZDTi4cwdKFY2MgkkK4+7jQzgc6Qc+33Y+VxgsTSr3iV4S4jWLqsEDCFPxpw
         ufvQn5s/ZNSDkMbNwBYSVbxv+yuUABXQX3S8kIXLIm4sNX3toAdnYinNxiSHSI7i/Jz7
         I9Cw5P3b8g3Asfnut6FpEBG+KRLQh62epcjd/7Cb1xzvQoBgArTs+sfs/xHwonKiF8ce
         d5aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LQMmWKFXXDNKTWX4CIpxQrEHPSRiPfMjq8jxaS3pzgU=;
        b=jtwzJ5DN5zxpD1+c8yr4fkfr7S7F4PS6qX5ucE4nD2lYlLp9p9Uz2xQloG7Y2QEy9W
         uKsreqVtF7tnojhnNbUvL7/xJnPIsp/PEemj2R15sDxGKOLW6uM5hrHv1wjLR0sc4rET
         RAVAZNhDqMwYCFzT8UygYRg73u18JDoTljRStZKV4R/A7ViZ4tfW26SpFJyYmOCV2kag
         999tBI0PaB+qbNPnSes1pYkZh8f6fkp3UJZWcblY6x6N91sdO1Nxgn9tJvmaHYnF1ncM
         CYlGwayhtG6mC2cUIpYBVwOajUSyMC8VOHZCevfG6oK9DXZ7hhkvMtg0ja2cRP+cPTk+
         fD9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="n/qvynkE";
       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id a3si1506240iog.2.2020.03.30.14.09.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 14:09:19 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id n10so5361004iom.3
        for <linux-ntb@googlegroups.com>; Mon, 30 Mar 2020 14:09:19 -0700 (PDT)
X-Received: by 2002:a05:6602:164b:: with SMTP id y11mr12569834iow.3.1585602559415;
 Mon, 30 Mar 2020 14:09:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1580914232.git.arindam.nath@amd.com> <a8e98fe8-25da-3ea7-a204-2fee07c6061a@amd.com>
 <20200313002524.GB13046@kudzu.us> <MN2PR12MB3232D38E30341A7D7408BED79CCB0@MN2PR12MB3232.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3232D38E30341A7D7408BED79CCB0@MN2PR12MB3232.namprd12.prod.outlook.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Mon, 30 Mar 2020 17:09:08 -0400
Message-ID: <CAPoiz9zBxB28nfCudr0xXYi4Lg7XRJXshTLvTM5W5uMcvw=2FQ@mail.gmail.com>
Subject: Re: [PATCH 00/15] AMD ntb driver fixes and improvements
To: "Nath, Arindam" <Arindam.Nath@amd.com>
Cc: "Mehta, Sanju" <Sanju.Mehta@amd.com>, "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>, 
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	Jiasen Lin <linjiasen@hygon.cn>, 
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b="n/qvynkE";       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is
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

On Mon, Mar 30, 2020 at 2:43 PM Nath, Arindam <Arindam.Nath@amd.com> wrote:
>
> > -----Original Message-----
> > From: Jon Mason <jdmason@kudzu.us>
> > Sent: Friday, March 13, 2020 05:55
> > To: Mehta, Sanju <Sanju.Mehta@amd.com>
> > Cc: Nath, Arindam <Arindam.Nath@amd.com>; S-k, Shyam-sundar <Shyam-
> > sundar.S-k@amd.com>; Dave Jiang <dave.jiang@intel.com>; Allen Hubbe
> > <allenbh@gmail.com>; Jiasen Lin <linjiasen@hygon.cn>; Mehta, Sanju
> > <Sanju.Mehta@amd.com>; linux-ntb@googlegroups.com; linux-
> > kernel@vger.kernel.org
> > Subject: Re: [PATCH 00/15] AMD ntb driver fixes and improvements
> >
> > On Fri, Feb 07, 2020 at 04:28:53PM +0530, Sanjay R Mehta wrote:
> > >
> > >
> > > On 2/5/2020 9:24 PM, Arindam Nath wrote:
> > > > [CAUTION: External Email]
> > > >
> > > > This patch series fixes some bugs in the existing
> > > > AMD NTB driver, cleans-up code, and modifies the
> > > > code to handle NTB link-up/down events. The series
> > > > is based on Linus' tree,
> > > >
> > > > git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > >
> > > > Arindam Nath (15):
> > > >   NTB: Fix access to link status and control register
> > > >   NTB: clear interrupt status register
> > > >   NTB: Enable link up and down event notification
> > > >   NTB: define a new function to get link status
> > > >   NTB: return the side info status from amd_poll_link
> > > >   NTB: set peer_sta within event handler itself
> > > >   NTB: remove handling of peer_sta from amd_link_is_up
> > > >   NTB: handle link down event correctly
> > > >   NTB: handle link up, D0 and D3 events correctly
> > > >   NTB: move ntb_ctrl handling to init and deinit
> > > >   NTB: add helper functions to set and clear sideinfo
> > > >   NTB: return link up status correctly for PRI and SEC
> > > >   NTB: remove redundant setting of DB valid mask
> > > >   NTB: send DB event when driver is loaded or un-loaded
> > > >   NTB: add pci shutdown handler for AMD NTB
> > >
> > > The patch series looks good to me. Thanks for the changes.
> > >
> > > For all the ntb_hw_amd changes:
> > >
> > > Reviewed-by: Sanjay R Mehta <sanju.mehta@amd.com>
> >
> > I had to rework the first patch, since Jiasen's patch was already in
> > my tree for a couple months.  The rest applied fine and will be in my
> > git trees on github in a couple of hours (sanity build pending).
> >
>
> Hi Jon,
>
> Just wanted to know whether the changes are in your tree now?

You should see them in my ntb branch and I'll be sending out a pull req


>
> Thanks,
> Arindam
>
> > Thanks,
> > Jon
> >
> > >
> > >
> > > >
> > > >  drivers/ntb/hw/amd/ntb_hw_amd.c | 290
> > ++++++++++++++++++++++++++------
> > > >  drivers/ntb/hw/amd/ntb_hw_amd.h |   8 +-
> > > >  2 files changed, 247 insertions(+), 51 deletions(-)
> > > >
> > > > --
> > > > 2.17.1
> > > >

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9zBxB28nfCudr0xXYi4Lg7XRJXshTLvTM5W5uMcvw%3D2FQ%40mail.gmail.com.
