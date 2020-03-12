Return-Path: <linux-ntb+bncBCS4BDN7YUCRBIMQVPZQKGQENVMWUUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id BB829183D76
	for <lists+linux-ntb@lfdr.de>; Fri, 13 Mar 2020 00:39:15 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id c7sf4329765plr.11
        for <lists+linux-ntb@lfdr.de>; Thu, 12 Mar 2020 16:39:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584056354; cv=pass;
        d=google.com; s=arc-20160816;
        b=VkVHoKxoXaCd1OjyRbYMMPUvmFrIg0394qG+Aiu1s3/+oek4IKlT2JKJTp5kWmyTbE
         zQFk8wotHxWPRonvU4P37z2dmbpyhb3q7kp3/NDUYXx+3P1aJ8gdzsSOML5g91lbiVHY
         tTxH6AG+JzEzxLG8S1OsiRJv/K6hTUAY/p+sSZburUHA9I31Jlz5m9NWzAdA6Hu5JSlE
         +OSggyb+ieR386fCGifO3V1pD0t0QQQjf+tvfCki92pN4Z9KraMyxyEkx/PjpBu/KUgt
         g+7uUAAubbt4PNqZZW97SaVG/+4G2TCkJ+1nN0Ll1yuk3g5P9iXwGaQqJLkb/aZ9vtAL
         QWrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LG4HVCGt9v9shCDY49lnWbzdu4w7ne4kOSitqdZ1g9w=;
        b=0maDDTiP3C/V6yJG3WdaWJ0ZpSPJtLQ504M2x7qSHxe8AIOTmwOq7PSganVs+RCKTI
         IVI6Z0Hw79SWBzL3fWFQO2Yu5yspqk9Jp1OSjkRa/mK10mHR9woAJoI5jU6cWLLwB1ou
         8Gg+Ik82KOVzgQ3FqtrHjYjTjwM4KDZqcbJXE0iVDsoC/rp4btOYHq1fIdcUSOanINFy
         1ZfBY8zKtCmb5wgxmuyfnvnzwGhfnk5FW5uzNMFYBixu9Ymuwd4EMQqobarmcX9ngV/a
         o2j0qs463tOCj0ITef1LUmqxx+nxq3sI2wyig2S5z3GYsmrUadAmTAtXXKXmX06WICCb
         Ni2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=YOgdzH8J;
       spf=neutral (google.com: 2607:f8b0:4864:20::141 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LG4HVCGt9v9shCDY49lnWbzdu4w7ne4kOSitqdZ1g9w=;
        b=f/u+P9TDw8+H1Tmp7wH+SHuON5qYBtwS1z59CSZ55klhew8xt7e0LuYYna5nfbU5vW
         0X1JnIUEkXvdCX5H8WA62Bn4zhQSVF8TT7Utr63xGeJ7YnkM8eyovIvNjc6f/ydeVMSO
         HPo9mdVau3sLdGz4Tdp35KsaC+jRBOx8lyVkWYPbuQ+JMscKj/TOo9ONIHYacLKXlxVr
         TGxotHZuuo66EUysyA0G9HeuOt6SAN/kO1/pau/kU4gnDWwVKtBl8DwGQ2omxkvCWwgr
         o6aVvqSW9rXz75k5XZ68eJ6hDDAsdssg5ByTGuHQuvP+OkHmt+t3sr/qtj1OtL+ns/4H
         NPXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LG4HVCGt9v9shCDY49lnWbzdu4w7ne4kOSitqdZ1g9w=;
        b=LZa9bJU/b97lbudCsE1l/dyKDXXVU4NJBrYy4M6scH6lFQpwsOyYjm4zpiOqXUMHGA
         +/S11k+bflKvvzi2xdRJi+lrTm2h+Ofnl6nH4ELFRV4whh//mjeFqP9s7xZIzgkXqFvB
         wuDQ/j1Dwxi43tqD2kFbC60Je5oOuXLvApcm8szYL2b1KVWGZEflX7BGJG9NQeqqTDvZ
         a79fiZWHYQEnUCdYfH9kflRFz7V0pG0JLq5EH9SebThAjeCSoqF8o7wU5PjVj031drHh
         GzkeC2cYhw9vVw7MunThKkVsJ3+TGHpa+qDhxdoyyRxdGpr0s++4ZkgN/KCwLN5XQUCp
         Q3Gg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ2zKqN3+hciXuCRQjNYQDvriDpWnAZhDBHJyu5zxJMfAQGrKoPs
	jeV3CmkoZPjMTyF2c9RHWfQ=
X-Google-Smtp-Source: ADFU+vulHOl+dHLO2A6m2Z1+7Tcv1FfkdVdK5VI8dRzi1Dk6/K9ZlC5bsx55JUSw9JJNK3ZbiL13Zw==
X-Received: by 2002:a62:e505:: with SMTP id n5mr11092832pff.189.1584056353824;
        Thu, 12 Mar 2020 16:39:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:b712:: with SMTP id d18ls3500896pls.1.gmail; Thu, 12
 Mar 2020 16:39:13 -0700 (PDT)
X-Received: by 2002:a17:902:9a4c:: with SMTP id x12mr9814858plv.297.1584056353392;
        Thu, 12 Mar 2020 16:39:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584056353; cv=none;
        d=google.com; s=arc-20160816;
        b=ap6DTm0UQ3MKkSvQ5dJVmEkERos8zdFzjDPhGaCYxWsmv7ZDr820pwlHAkycH2rEn9
         eXXrZwoqFzxQ8Rtl06Q45np/6aYkIy4WTsCimcyh6LFHnSu95fXttTEE+UgWbH1jGZKl
         qmtD6h/H4HfT1SYswFkeJZKPPwKAgoBAWMy7retLkC7o8ql3r5dWKTUxAW0nvJ1+FSoA
         G1s36sVeVhPt2sklx9Iap1Zn/TdKgJHFXXS5aOCcr62HNH1I6bjcM2Xctg8dwiTviYYw
         SRXGxBig+KnShesYm3siTcIslw7go+T2ByERb70Fs2hPAxHbaxRxzzvFcTCaFysoSmFq
         v7lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E2ILZNWl22AS1muXAlpbVVcHeSznVkag52uINnT+bq8=;
        b=pxKecUZLsvG9SoKh6ue4jo4eUYzBFlLao2MqBYC4nrlxLMtggE4L+fCJgChbgvjBK+
         Mbwln4bBPx/Yb3rubGWq5CgYwKuQa1Lwvm5k1AFCRO1ErIC24mYoxQvY10pE9l0C0c9+
         EUK7i69IzH9KIIecO7DtXRNbhJZOb/1ON1Sw33JDc1ry0DqFl1li/aeCaSVguCeUBd3W
         xk8wf4SlmWdfDe40skmP5n/OnJDnATSFGiQvxvJnOqEoS9vKV2DB+qGUCOPi6L4k2lMu
         Zr8H7exkg/KTEeKf4Z8WEObDQMFKe12rybvQ94fGOkU9vi7rfSfyKq4gFmLp7suQn3/l
         /Bjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=YOgdzH8J;
       spf=neutral (google.com: 2607:f8b0:4864:20::141 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id z7si383222pgz.5.2020.03.12.16.39.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 16:39:13 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::141 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id a14so7195651ilk.6
        for <linux-ntb@googlegroups.com>; Thu, 12 Mar 2020 16:39:13 -0700 (PDT)
X-Received: by 2002:a92:280a:: with SMTP id l10mr11155037ilf.49.1584056352713;
 Thu, 12 Mar 2020 16:39:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190710084427.7iqrhapxa7jo5v6y@yadro.com> <20200122131510.d5ckfj22idh56ef5@yadro.com>
 <20200303123223.i3fvwfmbhklfq2l5@yadro.com>
In-Reply-To: <20200303123223.i3fvwfmbhklfq2l5@yadro.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Thu, 12 Mar 2020 19:39:02 -0400
Message-ID: <CAPoiz9wAFfxSNh8MZo3N4hxJ9VMbF7qcx2SOOgq_1NDN=iVVQQ@mail.gmail.com>
Subject: Re: [PATCH RESEND] ntb_hw_switchtec: Fix ntb_mw_clear_trans returning
 error if size == 0
To: Alexander Fomichev <fomichev.ru@gmail.com>
Cc: linux-ntb <linux-ntb@googlegroups.com>, linux-pci@vger.kernel.org, linux@yadro.com, 
	Logan Gunthorpe <logang@deltatee.com>, Kurt Schwemmer <kurt.schwemmer@microsemi.com>, 
	Allen Hubbe <allenbh@gmail.com>, Dave Jiang <dave.jiang@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=YOgdzH8J;       spf=neutral (google.com: 2607:f8b0:4864:20::141 is
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

On Tue, Mar 3, 2020 at 7:32 AM Alexander Fomichev <fomichev.ru@gmail.com> wrote:
>
> Ping?

Sorry, I missed this somehow  :(

I just pulled it in and it should be in my github tree in the next hour or so.

Thanks,
Jon

>
> CC: Jon Mason <jdmason@kudzu.us>
> CC: Dave Jiang <dave.jiang@intel.com>
> CC: Allen Hubbe <allenbh@gmail.com>
> CC: Kurt Schwemmer <kurt.schwemmer@microsemi.com>
> CC: Logan Gunthorpe <logang@deltatee.com>
>
> On Wed, Jan 22, 2020 at 04:15:13PM +0300, Alexander Fomichev wrote:
> > Somehow this patch was lost. The problem is still actual.
> > Please, add to upstream.
> >
> > On Wed, Jul 10, 2019 at 11:44:27AM +0300, Alexander Fomichev wrote:
> > > ntb_mw_set_trans should work as ntb_mw_clear_trans when size == 0 and/or
> > > addr == 0. But error in xlate_pos checking condition prevents this.
> > > Fix the condition to make ntb_mw_clear_trans working.
> > >
> > > Signed-off-by: Alexander Fomichev <fomichev.ru@gmail.com>
> > > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> > > ---
> > >  drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > > index 1e2f627d3bac..19d46af19650 100644
> > > --- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > > +++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > > @@ -299,7 +299,7 @@ static int switchtec_ntb_mw_set_trans(struct ntb_dev *ntb, int pidx, int widx,
> > >     if (widx >= switchtec_ntb_mw_count(ntb, pidx))
> > >             return -EINVAL;
> > >
> > > -   if (xlate_pos < 12)
> > > +   if (size != 0 && xlate_pos < 12)
> > >             return -EINVAL;
> > >
> > >     if (!IS_ALIGNED(addr, BIT_ULL(xlate_pos))) {
> > > --
> > > 2.17.1
> >
> > --
> > Regards,
> >   Alexander

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9wAFfxSNh8MZo3N4hxJ9VMbF7qcx2SOOgq_1NDN%3DiVVQQ%40mail.gmail.com.
