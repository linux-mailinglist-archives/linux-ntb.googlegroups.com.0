Return-Path: <linux-ntb+bncBCS4BDN7YUCRBPNE37VQKGQE4UATPKA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 12839AEFC5
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Sep 2019 18:41:35 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id c7sf16010741qkc.2
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Sep 2019 09:41:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568133694; cv=pass;
        d=google.com; s=arc-20160816;
        b=QbdGveRKqZeOh+AVFvhKrk4kc2c4jnBOYU9gdR0glhZCn2C2wVutFctgTzQ3slJs0O
         qozJ5SQnBcYiQoXsdiPg4atWSkoJGnDqKXLjOb7LTYn1o/sKtNYnB+q451YGCzcb7Xs7
         A6G1Gxt3EYfA+bt+1y9h+PM9QtKW9lrxKzxUi74wjk6r2Sryo4qL/NVlAtJo9nUufqq+
         n57owyb9bXpdxrMiQekDRb9Ht4CdDWdnIh6xs9JCRHI++aUtFvqp7CjpRUAnoG7SjH7F
         IwNQPyw08YAW7ISnDn0lGxBPrqAfbm97VNhdFgN4eJfaNnj0tuf/QEUTTyMLtsifY3ot
         4UnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=O/S3U+E5PvmKsNkmg8bMzhZSID1r5jwu9ruivJp7OZI=;
        b=MkfM8NZhKkJu+lyALTooZlABvxnUanF+S89fA4de0faZTUM2KLSyD12p+8wa6HkgyR
         +vMKu9N4P9+75b1+uHrLPWR2yJxwUQV0V4kbCCsNCKeySDZETJ+hs6rySN+geXF2mJsq
         Uy7qygrKBN/0xYo3GScCqVYq6NdLs+Tx56ToJwEVXHD/NTauEtFnwKE4UAKtEhILNNrx
         h27Zg5XjqXutHBGgoZU4dzctpfHE48rAKxtjk0GrFpS4IWCM+lnQoPrBB6LddLQEks7+
         j65RNU/bv7LEIXanOd4m5JH5JI9erKUWt5Ql6MxNaUwPlff5ccLvDB8Je4hQEJ9qy0zK
         JMwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="We/JeeLS";
       spf=neutral (google.com: 2607:f8b0:4864:20::d44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O/S3U+E5PvmKsNkmg8bMzhZSID1r5jwu9ruivJp7OZI=;
        b=Psx90GSfkwqYqaoKmEPJs8pWJ9SR0weYPGAHYXCnFQen3OuYjZfy+8A7A4oY+ipuoC
         84mhPZdzdWA1S8eNFwKm4LwRBotZsXzfoE37Fq5VoqvmjfU+6bxORj28dI2W3LbQRlm2
         bho+pvOcck3vHzGBii4mECpRH7jViwrxt85Hcj67/jtLcFY/jB+iXW2vn4HaGxrv/tJc
         XXmYPNufN1inCGiTgQixxY9b49+MM+AOHjLUOh8/dHT8xWmTSwYSUIfzy79Lk+0F4noo
         IcYHhi+1y9i8CZviKWVN3rlFV9OH8/f5xWpxqamEHmomyqW0BTYJgf2ReYJJkpNDMmjl
         dDXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O/S3U+E5PvmKsNkmg8bMzhZSID1r5jwu9ruivJp7OZI=;
        b=OCU8sKmWvyVtNLmYkI7tHaghb74PeJgqmMmwW1HLJxpjNSDSV63thX1Lmoz01Anr6p
         qXST7QxsmYTmrP27DLl8K6tWeGnbuzC6zR8GI5bOfhqhQdhpeVXXE1APTu7oiL6H/TOl
         i1tZ1zua/8F8SnP+Hv5rY+nCyr7oZUl1AvVn0Bwk1WaUom/aBnP8BueF0JhAu5ntk2nE
         wISnUFlzfTESr4+4kOApU1c/F6L+Cee1iR/tT1Q+mE/KAWMEhZSGw8aDPEipdP0p6laB
         f7AEtlssQ9SjR874EmM4h3DEJxsDqi/CtHGvpdENatvs6lpjp0kGRy6YMrSdtvG8U6F6
         xCPg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXoDdXPjLodrQ0WRxY3yY3fU355wDc7Rq/YZmljhBVl05EVCu6a
	iq++mCq8kKV1gMnGcaY/BQg=
X-Google-Smtp-Source: APXvYqznTPRh5xgq7VGCp6aJSA0XNZf0na7cSeU9lPMVO6CBdpgow22cO5ctiOMmmciO00m3l6KIYQ==
X-Received: by 2002:a37:a00f:: with SMTP id j15mr29818632qke.335.1568133694027;
        Tue, 10 Sep 2019 09:41:34 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:34fd:: with SMTP id x58ls1708170qtb.8.gmail; Tue, 10 Sep
 2019 09:41:33 -0700 (PDT)
X-Received: by 2002:ac8:604c:: with SMTP id k12mr30987237qtm.62.1568133693583;
        Tue, 10 Sep 2019 09:41:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568133693; cv=none;
        d=google.com; s=arc-20160816;
        b=FYNyye6tyGE2i/6WrIVdtQhLCckkesfZUCVrjLDzBldXw4umry6TB8cRWhWZf7RbRI
         Y/hx6b9+6LFcBw/aTHiRjQSIzLkoyuQKZDslIC5icPHf8FYftC2acN9etf6SRW4RO47P
         wiZUD9GBNrOVg9twrOZMIHNB55UK1FdfY5PEbT/jIFg6xGRlGO8Mqo2YDRD84T4BTRZa
         RQE5GUiREcA0IoFxfJqR+l20yRBlCBR28WPZuULOd+QRtPwbYhUYNeh/A3auWA9nLJY9
         c1M9huoQM7XNm9jPFmKzeOa7AtRP63RGWrWHMGyTpgyxPRMTlEzONWFtoQe/CTJk9EGd
         Xl0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PuYC847frxgHINuOOhOoZA3oEgF84P0aotCSUtzOwyE=;
        b=Un2zbjgPbtDOGGGd3/QpzGMeh7FJzcmxKIv3nTsRiHvLSHUb5ZUwdQiOsgOy/xWQA/
         T0njjDEmxbQiRzNl57I9dAqiX+sH21OzwvgVDMkIyDLiafjo+u8UdHAHisYWRdhrFWga
         Ts/xzrc7sOnQkGFXjuHbiZnOone99dC6zj94Pqv9t7WQxFdsQO5Y6t23ggTZfwY2F21d
         0dQ5C297x/Ibe0S4QlDmLn9CrnhwiXKZjIig3wp1zxW4mL9ZkNaj2nPMx8GnjWS8Rx4F
         VsMjEg8ZyhKlqlEe4mPqxwVEQp23BIWCLTqmCN/Hz59jW24WcKNGNc1vGSuSBtK/4KyX
         Dodg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="We/JeeLS";
       spf=neutral (google.com: 2607:f8b0:4864:20::d44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id g21si818381qkm.5.2019.09.10.09.41.33
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 09:41:33 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id r8so14065535iol.10
        for <linux-ntb@googlegroups.com>; Tue, 10 Sep 2019 09:41:33 -0700 (PDT)
X-Received: by 2002:a6b:7215:: with SMTP id n21mr6285570ioc.238.1568133691620;
 Tue, 10 Sep 2019 09:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190716173448.eswemneatvjwnxny@yadro.com> <9428e069-19dd-d020-1a47-f33d99bd01ac@deltatee.com>
In-Reply-To: <9428e069-19dd-d020-1a47-f33d99bd01ac@deltatee.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 10 Sep 2019 17:41:23 +0100
Message-ID: <CAPoiz9x4Gb6hZg3GBfOjw_zMShOJHmXGmCOm2Nj+-vCaOzDCMg@mail.gmail.com>
Subject: Re: [PATCH] ntb_hw_switchtec: make ntb_mw_set_trans() work when addr
 == 0
To: Logan Gunthorpe <logang@deltatee.com>
Cc: Alexander Fomichev <fomichev.ru@gmail.com>, linux-ntb <linux-ntb@googlegroups.com>, 
	linux-pci@vger.kernel.org, Allen Hubbe <allenbh@gmail.com>, linux@yadro.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b="We/JeeLS";       spf=neutral (google.com: 2607:f8b0:4864:20::d44 is
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

On Tue, Jul 16, 2019 at 6:41 PM Logan Gunthorpe <logang@deltatee.com> wrote:
>
>
>
> On 2019-07-16 11:34 a.m., Alexander Fomichev wrote:
> > On switchtec_ntb_mw_set_trans() call, when (only) address == 0, it acts as
> > ntb_mw_clear_trans(). Fix this, since address == 0 and size != 0 is valid
> > combination for setting translation.
> >
> > Signed-off-by: Alexander Fomichev <fomichev.ru@gmail.com>
>
> Looks good, thanks.
>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Applied to ntb-next, thanks

>
> > ---
> >  drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > index db49677..45b9513 100644
> > --- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > +++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > @@ -305,7 +305,7 @@ static int switchtec_ntb_mw_set_trans(struct ntb_dev *ntb, int pidx, int widx,
> >       if (rc)
> >               return rc;
> >
> > -     if (addr == 0 || size == 0) {
> > +     if (size == 0) {
> >               if (widx < nr_direct_mw)
> >                       switchtec_ntb_mw_clr_direct(sndev, widx);
> >               else
> >

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9x4Gb6hZg3GBfOjw_zMShOJHmXGmCOm2Nj%2B-vCaOzDCMg%40mail.gmail.com.
