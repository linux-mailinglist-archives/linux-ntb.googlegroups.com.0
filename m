Return-Path: <linux-ntb+bncBDE55XUH3UHRBGMDVXZQKGQEZ5I67UQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 2800A18424F
	for <lists+linux-ntb@lfdr.de>; Fri, 13 Mar 2020 09:17:30 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id h14sf3205312wrv.12
        for <lists+linux-ntb@lfdr.de>; Fri, 13 Mar 2020 01:17:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584087450; cv=pass;
        d=google.com; s=arc-20160816;
        b=O0Y+rh3WVRwqULj7cJ3sG4gPpSCGTERhhYFmdc1cEYmJfDGYkdFkgIllVyUBzMjEVG
         6QBJeXH65QggJlISXNwjj3jsDu1bp5gXyNQFZQSHyg5ho0No8OciKsN5I/TY4Zb+nkIf
         xQy7uM7zxvtylCco3BEnGZ6pp2iG0lKdCivHqwpTN2jktztr+587SDFpsSlMwD5wYAwB
         fDBSqAucScK7kVpwDneyS4fYM649zxdGXYNA0T6MUyT+aAH5kbqNF2V73nR8XU/c/GFO
         mLVwl7l8XDPfp1QibeogQgvJaSJsaey9Q/Dz6RWSy8dPiAkxF98JBCzSdSbiXZUgWq6G
         LURg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=mL9+KHxnMwmDKaXStbt34zF1hp3PUkkwBQXNBAu8BbY=;
        b=f1DfAaPW9jU9A8d9CB/uyvnvaxJK9JRz/YUyqcC/VIlqvY57WKzGW+7mh2gfqF/Hne
         4T0roioSYyZ18vx3Vb2+pQvKV5EhPCmeNnak3+p3NznLnABxg5rhBNSYzWanMzzaeFd4
         /gYL233+o42Ra9SdMaQIv5ehVLdswTHo127BJ9AkM8wRdqbI8ZydkoZTmBHlCb66P59C
         ajXR/TGwwP5N7NgaXaNEINetzOguHzQINxRrFjLJ4TJtEVSvQEdGCmWYxLRgErk7k41E
         3aXDdH18sfwAP/QIPlCeupd0nfvfsYGZh6GC8FTOOSnOhXHkNbqktqLx6VR9gdzQyCsG
         kJkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dncNFMS2;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mL9+KHxnMwmDKaXStbt34zF1hp3PUkkwBQXNBAu8BbY=;
        b=CHq/57uamlcSsPz2EW8CSZpvo4EjOj3/EH1CmRrygt/cKxjgq5QIXSQ9Hn5vtrCBw2
         7mPEocwNcPp9nRMon8kAPsr5Y5DIfbuB1H+bCUZg8g8Rz8tRAVx6YNlui13UI+JDBzI2
         +Gj1BpfcCg4tVRRnBYd0da090bNhbbxiPWYQrs9V4nsA0qwFsnxo2nxaxt0cByXFLGP2
         Td5e43cGLHD/RoJApKpqnL3szQDDLlfpkXXs7TKFZzYP4f4BU5W1anc5ZbyAPwGz9PnD
         RbrDRh/chs/H56iag0lZFZORoxMESEKBY3rLu+ffq1n3ht7HrQevWlOzwWYw35lqJkgE
         QtBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mL9+KHxnMwmDKaXStbt34zF1hp3PUkkwBQXNBAu8BbY=;
        b=GDIzlcRWt1MivK0Nfm3ilMTCkirLMbBqRbkvJKnP+YcPbWOEFAgqALo4LFQWzl2kTn
         kprjQvFfDCcdbekgNqH9KtRC9SryVS3aSWiiv0GcmWtRK/UYR4oSiEZ3tQnyFgOhfrzF
         /12o4y4gLuaJ3TLuNCMKaCno22fzeLFjih/mI/F5oj3ex+F34F+XWIPHMDNt5B5om/TT
         rxLO6uSxlDYm0rwwMAOJySeE7QAZMs6AyRDQk9Uu4n6kBMTBDZht/cZbThzeNSwIOG/1
         YrRTydTTiUvrEmU08OEIMiGYEeNMANTqBClTo/9P4iv91wZOKmBUDEGe9F4adtVj8GXv
         dRYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mL9+KHxnMwmDKaXStbt34zF1hp3PUkkwBQXNBAu8BbY=;
        b=q9IIRH3hsD3AQbQEABkiclr6EHVuY/g79p47YsNlPPutt695EX16Vh8oAFcav/Aswp
         MI4sdNpoxPQKEJw3UbDV95P2HDTvT5GEDUXQtDxJrDqdW3ZlK5jo5UZP3VAPnSbhrW66
         HTVRgSn4rYqJNxVP3OTxAyxSgeLUSi/Ism6+1tYP9wb0r58m0kHB2QHg+m7usWMBvoKX
         48Qe04r5sij5LeoTQ4J8AOcVtWt0V80jvTDl3GbZ3bqBJ0REo1RvrXgRDyTHKOKt0NaV
         H9+2DVNVtsdndkkjKY+f/9YGvrPJKMFiF1cxbb+kwcS/eJPqxYYLUKYVljD84DWKN+QU
         kp7g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ3vvW4dNnQVhKz6JjGj4FEJhzmJ1hZxHTEdqNDlgY+KriFmAKWE
	MmQurxrR5bJcV1cH+2zEC5c=
X-Google-Smtp-Source: ADFU+vv4QKht/wygUg5hW4Ws2yhtt3FLnsZDzKeQxDw7DOKqJW8glYUolH2LR+l+SdezJCVPWo16Qg==
X-Received: by 2002:a5d:4885:: with SMTP id g5mr15717162wrq.93.1584087449813;
        Fri, 13 Mar 2020 01:17:29 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls4382912wrq.10.gmail; Fri, 13
 Mar 2020 01:17:29 -0700 (PDT)
X-Received: by 2002:adf:aa92:: with SMTP id h18mr14447656wrc.139.1584087449223;
        Fri, 13 Mar 2020 01:17:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584087449; cv=none;
        d=google.com; s=arc-20160816;
        b=UyA1G3ALbTCLLIrP/hLxpmGYBDgvnLXtTLmJYQVs2PmmUA1I3sw/tnZ1kfqTq28Dqa
         iGlOYbAZGIzu6KbrWmfW3EX+bV2nYM2k5pIZuBfmQeKKmYCMSY6BB/zZXNe5ujjCaf/t
         JAh/EiBBCmExQsyJR3kNKApTIfK0YiE6x0xBhBff8N+uv6snr4pSXwfk0BrFiG88qQL2
         aCld8eJjBh4gV7/ZWJK2j2bXkDXZf4GUwUWZVj2enHzjfSs9PG5+ykBLlnho8ECvHveo
         Cy5Lo2YKuwis593xdrLL8DhMh/hXyZLW4heql8KcyRp+//5zHWHhAeBxFV3pVklgp21d
         LgjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tXsPcGv8Fan/bvdsN0nNGI5CETM/nKN+bYEsELNFYjE=;
        b=E8+rsQ9jlfH8e29QD5+mQKnf4dymZMFmrhSeOJBaG1MuQiNVwhTuRaUDhukzzv2/cf
         r4VPvMs0cw8mdxBjLTWY+hkUVdQTlgcLlN77T3MO6/IMTJhgeqUhxOqWBrEvdHvEV15x
         QNm+1RCpVQls8bHIPJVRE9+c/3fYGmrKZk2te7Wybn4wiwj5CZ+W4I4EDCJQ0bAxTtB/
         CiLBfKkj/5VVtUmjzNrqexd6Wh4oTPnEYJb9oDNRb1LYZCfbsg6nTtujeaZn7iCJnTu0
         N1g8U67jnUigR8Pabki/3slx+J5b064Y4fKcbqC0cb+2cKciaLoMqx++Nd0auw3fg6aJ
         RNfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dncNFMS2;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id l17si491643wmg.0.2020.03.13.01.17.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 01:17:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id t21so7098423lfe.9
        for <linux-ntb@googlegroups.com>; Fri, 13 Mar 2020 01:17:29 -0700 (PDT)
X-Received: by 2002:a19:c7cd:: with SMTP id x196mr7645924lff.106.1584087448610;
        Fri, 13 Mar 2020 01:17:28 -0700 (PDT)
Received: from localhost ([89.207.88.249])
        by smtp.gmail.com with ESMTPSA id g20sm4945780lfe.65.2020.03.13.01.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 01:17:27 -0700 (PDT)
Date: Fri, 13 Mar 2020 11:17:27 +0300
From: Alexander Fomichev <fomichev.ru@gmail.com>
To: Jon Mason <jdmason@kudzu.us>
Cc: linux-ntb <linux-ntb@googlegroups.com>, linux-pci@vger.kernel.org,
	linux@yadro.com, Logan Gunthorpe <logang@deltatee.com>,
	Kurt Schwemmer <kurt.schwemmer@microsemi.com>,
	Allen Hubbe <allenbh@gmail.com>, Dave Jiang <dave.jiang@intel.com>
Subject: Re: [PATCH RESEND] ntb_hw_switchtec: Fix ntb_mw_clear_trans
 returning error if size == 0
Message-ID: <20200313081727.fs4lfzfbuafo34nk@yadro.com>
References: <20190710084427.7iqrhapxa7jo5v6y@yadro.com>
 <20200122131510.d5ckfj22idh56ef5@yadro.com>
 <20200303123223.i3fvwfmbhklfq2l5@yadro.com>
 <CAPoiz9wAFfxSNh8MZo3N4hxJ9VMbF7qcx2SOOgq_1NDN=iVVQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAPoiz9wAFfxSNh8MZo3N4hxJ9VMbF7qcx2SOOgq_1NDN=iVVQQ@mail.gmail.com>
X-Original-Sender: fomichev.ru@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dncNFMS2;       spf=pass
 (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::144
 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;       dmarc=pass
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

Thank you very much.

Regards,
Alexander.

On Thu, Mar 12, 2020 at 07:39:02PM -0400, Jon Mason wrote:
> On Tue, Mar 3, 2020 at 7:32 AM Alexander Fomichev <fomichev.ru@gmail.com> wrote:
> >
> > Ping?
> 
> Sorry, I missed this somehow  :(
> 
> I just pulled it in and it should be in my github tree in the next hour or so.
> 
> Thanks,
> Jon
> 
> >
> > CC: Jon Mason <jdmason@kudzu.us>
> > CC: Dave Jiang <dave.jiang@intel.com>
> > CC: Allen Hubbe <allenbh@gmail.com>
> > CC: Kurt Schwemmer <kurt.schwemmer@microsemi.com>
> > CC: Logan Gunthorpe <logang@deltatee.com>
> >
> > On Wed, Jan 22, 2020 at 04:15:13PM +0300, Alexander Fomichev wrote:
> > > Somehow this patch was lost. The problem is still actual.
> > > Please, add to upstream.
> > >
> > > On Wed, Jul 10, 2019 at 11:44:27AM +0300, Alexander Fomichev wrote:
> > > > ntb_mw_set_trans should work as ntb_mw_clear_trans when size == 0 and/or
> > > > addr == 0. But error in xlate_pos checking condition prevents this.
> > > > Fix the condition to make ntb_mw_clear_trans working.
> > > >
> > > > Signed-off-by: Alexander Fomichev <fomichev.ru@gmail.com>
> > > > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> > > > ---
> > > >  drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > > > index 1e2f627d3bac..19d46af19650 100644
> > > > --- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > > > +++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > > > @@ -299,7 +299,7 @@ static int switchtec_ntb_mw_set_trans(struct ntb_dev *ntb, int pidx, int widx,
> > > >     if (widx >= switchtec_ntb_mw_count(ntb, pidx))
> > > >             return -EINVAL;
> > > >
> > > > -   if (xlate_pos < 12)
> > > > +   if (size != 0 && xlate_pos < 12)
> > > >             return -EINVAL;
> > > >
> > > >     if (!IS_ALIGNED(addr, BIT_ULL(xlate_pos))) {
> > > > --
> > > > 2.17.1
> > >
> > > --
> > > Regards,
> > >   Alexander

-- 
Regards,
  Alexander

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200313081727.fs4lfzfbuafo34nk%40yadro.com.
