Return-Path: <linux-ntb+bncBCS4BDN7YUCRB3NE37VQKGQEDS57AXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF06AEFC9
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Sep 2019 18:42:22 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id q9sf10952947pgv.17
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Sep 2019 09:42:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568133741; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qd+pKm3zWcThAcjknSys/nsXIN+wN/KboLy76RuFkkPUY6pHftV64sUKOvTQpj7T8L
         wrd6fjqGgSSsK6Fvfa8clZOUN1CQ8V2KP/cONXdfKKH10SUHcaFNbvXpiIoHQx0otHCi
         8DhXUYENRcRqu0OhI48q157DKI3r78rKag9TgMleeChDs43yYJC2rR6oIbrDBeuFwHYZ
         kqXl5GxCw04QUCOHN7bS8JIn9O4q671YuoAdMlmyx1HHMft/wd0GPAAyoUlqQxdPq3Ve
         qs6NkSqaGTpuN0zXdkP+558aVra+v5c2Dpk/1uR2B3gxg7XxwN8/2y0LbL/R5hanNptg
         +tsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=PzDVDM6S4hcW3fIeVOULhKExZ+moWfNGlBWJq7rl3bw=;
        b=lZarHp2+At/2GluZ1jPtJsgxf/Ok44JFTaWK4PfHecpiYxfSz9cC7KSGEUOTwAxyFp
         rZq914urWOGTMHwpa/sXbv+eYhB0NS0A4uyoh1ghHTT8SNgwvIa3J/ZusMI7Reqlp2r2
         r4g0b6/bZcvQ+GsfnEifi5YFtj/zAlFpA10eapXg1lhvqpKVpBveoKT04Uqj/2eqUnjP
         vMyr6Rgk/L8fSiOtjDJQj9pVWhwC5L+549U5Qi6ogdakffX7JbcBV9z6nuBM+szSGxGC
         3fTFL6JSOHVeANoXn1/7yW54M6387xeBaHQf59HPXtw78pZNdgaGwrnFviL/2jOR0xgj
         Vfwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=uRXjz1M6;
       spf=neutral (google.com: 2607:f8b0:4864:20::d43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzDVDM6S4hcW3fIeVOULhKExZ+moWfNGlBWJq7rl3bw=;
        b=JKJnupOdHdN36PhLUFcTx1yv30KFXQO5XuNliAfJPNRI96IDPG9VnaBPA3ZDL6T3kB
         /a2JArpRNPbpowYiSXHkYJN9EOn7ow8vFHeNGf8erP9iMzoEP6uYPAlsvEc4rzF/tt3/
         hYwi+zhojbPfrJN80eIDq8Sp1rpHHm9P4WSLgolr8rEOpGAeD9Qjv5KCkkBv/kFQwaPm
         wqV2Xv4iKpBHBUG8QCQ8ovYSJSZwqezFMfmgv2dPu5xFqDdlGVLGTT83FGR0425HDyF/
         qqbLJqMD8jl79bOKDA48EW+fPuvYHudAKgXAKs7m8OrtZGXGjMAhxM7cRcUqVfPc+iPi
         0rLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzDVDM6S4hcW3fIeVOULhKExZ+moWfNGlBWJq7rl3bw=;
        b=fb20kXSbH/TIGLDGdIewE7KYRX6PcgR5EUJG16Bjoet+z4RRbn5qosdjjbscL/BsJB
         i5t36aveILAPJjyGhZpo+RlX5RPlQyeBObJZsCizjcdUVWBbJqdfgLuVPzJVt/RNyPE4
         QPwGOk4xcGhKanvXMDix0voIop0CLay0gbRT11Vh3p8dfW9L8PV9YpwJ7azATN5FqURV
         f1w4AB6x8inTCwwEO3yIwX6COtBquDKuziJUxnMc+UTe1gOUJImhOUkloxTu8A917XzG
         5Qh6kpiPJKXKDVegX5ZSBPyuCG4PIb3CDQCOyEY8X+ZZv6EfG2UfRMCDoh2V4PXIjZgr
         jr4A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUpcV9mCoLj1U9MckoNQRT5DH+D1tz5jYrkq4X71ed8DFasKyBq
	D2PCXIkHMSnwa9Gw3zXLT00=
X-Google-Smtp-Source: APXvYqylkgNWa8rvb5QAHZ2Cc0amxLqVzFlOaif6d3IpV5UWtthIeZ/97qmwii9s8uyoPANLS+UKXA==
X-Received: by 2002:a17:902:9001:: with SMTP id a1mr23992248plp.148.1568133741231;
        Tue, 10 Sep 2019 09:42:21 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:614e:: with SMTP id o14ls3849791pgv.7.gmail; Tue, 10 Sep
 2019 09:42:20 -0700 (PDT)
X-Received: by 2002:a62:1888:: with SMTP id 130mr27801867pfy.72.1568133740927;
        Tue, 10 Sep 2019 09:42:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568133740; cv=none;
        d=google.com; s=arc-20160816;
        b=n5G0UQG53lRqCGeAyz+valrtCaTERYPUWnNE+5UrzXHGPkRUxKNiUaGJ10ZNZpYTn/
         PtjfA83nf4IUEJ2HTxVkCistR/QrrrmA/Q7M8A1eDGpMwP5wrQby/qQ0HnMgw8zIs2bd
         XnCZPJszE4jTtwo31j6QlSs2SbVgQFvT7uVLNodI4V+jRGcHcKZZO7m1z0reOq/JoLZZ
         3C81l/KLU4ZoYRP5WJMQdmTJZqIFQVnUxvziIsT+IpZN0mX+XQKAC2TXDABSX78kNtNz
         gOjvhN8LrI9q/Uh01plhBN7VYuLIU4pQmWevt35hqRUi4ssHvLHgi7VuXrkbr4DYbsm8
         Jegg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MD4aD1X+KEJ08d//fNXS33g75U6oRemG6qaqU7rs6pc=;
        b=hSKh1CbKPQXSsJmMdyMhOQjqe5ZaUKlINoEQyxV2jX5H/lCFQ6/xMzNOrCl4ALGGEW
         y81YL35Fc1S6H+CK7UiCJNs+iwSlf1ZfCYQp2c1yRgFigYmjfbq3U4mpFNrJvFy4vhN+
         uOvn18axvQD9dFomg/8s7hQMz4y8sX7JCuMAr4T/moQ3v5beSvt6ZSFtubknIW0PvjfU
         1wg3iHZ2cLhEjapFgk0J67W8KmsPpVm68MmNYIx5Z7m08n+ho0OCe4mjdZAtw4MBfL0r
         IFrUUcipLjOPQHm8cgkSE7APvw/rz8MYiFr029hF05lHugnpRL0/sqCY1v4vWB2AtJeO
         hzMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=uRXjz1M6;
       spf=neutral (google.com: 2607:f8b0:4864:20::d43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id j21si1406398pfe.5.2019.09.10.09.42.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 09:42:20 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id d25so39056645iob.6
        for <linux-ntb@googlegroups.com>; Tue, 10 Sep 2019 09:42:20 -0700 (PDT)
X-Received: by 2002:a5d:951a:: with SMTP id d26mr6730731iom.31.1568133740200;
 Tue, 10 Sep 2019 09:42:20 -0700 (PDT)
MIME-Version: 1.0
References: <1553859137-4439-1-git-send-email-Sanju.Mehta@amd.com> <MN2PR12MB3455BFCFE060E38FEDF686E1E52E0@MN2PR12MB3455.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3455BFCFE060E38FEDF686E1E52E0@MN2PR12MB3455.namprd12.prod.outlook.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 10 Sep 2019 17:42:12 +0100
Message-ID: <CAPoiz9wqa4zhhitBeu8XDvOckhVWpEviPdk=UTCh-pLUvk9QvQ@mail.gmail.com>
Subject: Re: [PATCH] point to right memory window index
To: "Mehta, Sanju" <Sanju.Mehta@amd.com>
Cc: "dave.jiang@intel.com" <dave.jiang@intel.com>, "allenbh@gmail.com" <allenbh@gmail.com>, 
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=uRXjz1M6;       spf=neutral (google.com: 2607:f8b0:4864:20::d43 is
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

On Wed, Apr 10, 2019 at 11:24 AM Mehta, Sanju <Sanju.Mehta@amd.com> wrote:
>
> Hi All,
>
> Any comments on below patch?

I wasn't cc'ed, so this one missed my inbox.  Applied to ntb-next, thanks.

>
> Thanks & Regards,
> Sanjay Mehta
>
> -----Original Message-----
> From: Mehta, Sanju <Sanju.Mehta@amd.com>
> Sent: Friday, March 29, 2019 5:03 PM
> To: S-k, Shyam-sundar <Shyam-sundar.S-k@amd.com>; jdmason@kudzu.us; dave.jiang@intel.com; allenbh@gmail.com
> Cc: linux-ntb@googlegroups.com; linux-kernel@vger.kernel.org; Mehta, Sanju <Sanju.Mehta@amd.com>
> Subject: [PATCH] point to right memory window index
>
> From: Sanjay R Mehta <sanju.mehta@amd.com>
>
> second parameter of ntb_peer_mw_get_addr is pointing to wrong memory window index by passing "peer gidx" instead of "local gidx".
>
> For ex, "local gidx" value is '0' and "peer gidx" value is '1', then
>
> on peer side ntb_mw_set_trans() api is used as below with gidx pointing to local side gidx which is '0', so memroy window '0' is chosen and XLAT '0'
> will be programmed by peer side.
>
>     ntb_mw_set_trans(perf->ntb, peer->pidx, peer->gidx, peer->inbuf_xlat,
>                     peer->inbuf_size);
>
> Now, on local side ntb_peer_mw_get_addr() is been used as below with gidx pointing to "peer gidx" which is '1', so pointing to memory window '1'
> instead of memory window '0'.
>
>     ntb_peer_mw_get_addr(perf->ntb,  peer->gidx, &phys_addr,
>                         &peer->outbuf_size);
>
> So this patch pass "local gidx" as parameter to ntb_peer_mw_get_addr().
>
> Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
> ---
>  drivers/ntb/test/ntb_perf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c index c7d1a48..08e18d7 100644
> --- a/drivers/ntb/test/ntb_perf.c
> +++ b/drivers/ntb/test/ntb_perf.c
> @@ -1381,7 +1381,7 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
>         int ret;
>
>         /* Get outbound MW parameters and map it */
> -       ret = ntb_peer_mw_get_addr(perf->ntb, peer->gidx, &phys_addr,
> +       ret = ntb_peer_mw_get_addr(perf->ntb, perf->gidx, &phys_addr,
>                                    &peer->outbuf_size);
>         if (ret)
>                 return ret;
> --
> 2.7.4
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9wqa4zhhitBeu8XDvOckhVWpEviPdk%3DUTCh-pLUvk9QvQ%40mail.gmail.com.
