Return-Path: <linux-ntb+bncBCS4BDN7YUCRBZEQV3ZQKGQEMULGZTQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id A12CD1847DD
	for <lists+linux-ntb@lfdr.de>; Fri, 13 Mar 2020 14:19:33 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id h22sf5646126otj.4
        for <lists+linux-ntb@lfdr.de>; Fri, 13 Mar 2020 06:19:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584105572; cv=pass;
        d=google.com; s=arc-20160816;
        b=dn7MkuBF4wtbZdbkrMrsUU2NK2rvqCDYVBUNDtmZ1APYPLOj9bnxI7wDiwf3Cym0Wm
         9VhNcd88yqpGjGyXrLLd/C/39Z1qmUVF47mDx5IVLbU2W2Jrokm7JZRVDX7T5lZVugPi
         B+PqGmNGyLpufwJjePUpH1Kbo//D8wYsRDKN9p7OGOZZqm2gdUZxsuSte7ZZBoeDG2Tl
         o0m3bxACKEj941hy8GoYOch5jbLMqrKc0TIqsXV3F5gaDFSn1RUt/cTLA/Sh6ngddhpS
         ZSVcnuyCEU394/NStX70nQ/kohvDaCBo6na0igKjP1xbBuk24sp15NfW4xPvH/ZrGVxd
         jz6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yXSS7HodQZ+TeLxx2Cey/fqh8DpeI/nAdpodkE3/zW0=;
        b=WZPPP3u0XlBPRaU2Vsi48Du+NMdJ5ftSRsnEEkaFdIGZyAZBYyITFqu/75zPM2pemF
         +bf1trBylDqfGyOlHd6MQjg59QZSOpAs9x+j0bWosa4fvwm0krWTXmnmHKDl5vmcZOly
         UwvODjSgofLBKV5tFWhgUCAC31ypm/pbR89lHXPmv2XwsQR6h5kNDqOi+9I4hnPGG3cW
         ILzL3xa3aDUebLGv5PPcY4zn4VrqMEXrDaHbPRU7t8ziffdZT0dTyayvXDG/7wuWcKTH
         0k5EFxxx3ZRC1VyuASCvfKWKvyUCjmiPkgZUzDGsbNl0OWyedtaRmD/fovoWYhC2AcWT
         oIoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=CDvKwq6X;
       spf=neutral (google.com: 2607:f8b0:4864:20::841 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yXSS7HodQZ+TeLxx2Cey/fqh8DpeI/nAdpodkE3/zW0=;
        b=ssicyMcYxB4EYKoVCruiprI7NLdVH26I4kk2WwTPfgB0WWK9UIZi6u7jbrzRKYLDV+
         JHuUIgDHEFUpmXjkeG3ToXIaF29w1rdO7gWPkX99e5mKhcREcrwcsCa9T8ujEbVfR222
         G0ZDvO8wpju43taDfouhiUyvksQLScUSiLvZKqOPIgD41WfTi9yuOUCRmanPid9KjYp7
         SV7FptmqRAe5bcG0I6DyQRwU7/+kT6bEDnGfMR4UrbDI66QTmGZRiBz0M4pHLJXtKrye
         IRz3TtDGaY5L9DzLAoYPxHHGma7ky6mZRfPH556uYcCazVY4YwsTwcw+U64+Vm5HZq2+
         BkrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yXSS7HodQZ+TeLxx2Cey/fqh8DpeI/nAdpodkE3/zW0=;
        b=FoDw5utsXfTjex7QBQ7e/I3fPmVdemZdyFouXZ8LOBXmHsKfvaQrNKa9fr5lf5G6td
         W1Fml1VuKruj24FXpSHkSMrxOdJobTwbnqLwl9hjZrPhHY9rXITPXR6s7Z7vNkE7BVDF
         i5ajaUJeGjCG25iscHuHafkoLCR+9GcaImcZutcNAGBNomggqf5g1/mVq2Qh3mCcSgNj
         4QdkMyo9NtCJXda04vfMZyoopRUG1WgW4g2poiAwruEXNUe2iAOKnmcfkBwOD3kyK5UG
         qJPP5zN3FAu/s6KGhPhAEB57I0PzGeORRnJWTAy2YWIkwPQZEFuLwdY2RBUMZI8pftcq
         ilmQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ1XrnuwnuqopEB1fOpLcRxx9jSCkpof/ulCX3JTeenm4/TIsn0m
	bgaj9YFZXRIshhnYYSOJa9s=
X-Google-Smtp-Source: ADFU+vvHTNrmf1HFdOhNYXv/ZQYI+EGypmbxtVApEdRjXjGtL7cRm4hobqkMRp8QglgIJERi8Q6ROQ==
X-Received: by 2002:a9d:3435:: with SMTP id v50mr9544498otb.19.1584105572604;
        Fri, 13 Mar 2020 06:19:32 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls1481932oif.3.gmail; Fri, 13
 Mar 2020 06:19:32 -0700 (PDT)
X-Received: by 2002:a05:6808:b2d:: with SMTP id t13mr7104124oij.107.1584105572245;
        Fri, 13 Mar 2020 06:19:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584105572; cv=none;
        d=google.com; s=arc-20160816;
        b=X5/f/MxYNOeBtydwofoUU5Dd0jUITJeRFE/zKEa4OwgUdoArhBpIdyYbCeCTVyk7mT
         8SuIt5MctWPk2PTw6bMImoppG8FQG8oBSWMwzIzZCcMl7BaaY1GSEAbDicGEH4e8sxEu
         cjXU8nD4v4pOjQ8VRPVN+hlDsM89fcTzXpOwVv+TfvO4YYHNDK2DXKtI7OI9oNghJIVP
         36omziAkMLYdohvsD2G4+8mWc1PauYR/ak81bVBvju3xKBWSzqL+QfbmyjMpYWwbUkvj
         R4oFjOsJTG0rUnglahBqk38JpdeQVqKKlQ8etdT0AJFBPAedms/hQFtiC0oGyNHchAte
         5Wkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cgD9btST/2n08HEcsI46jTRfluoRgQLxezxCTZBz+M4=;
        b=jWCerEZPyP8MP6kry7GC6kUqO//vik948m//R47ki3OAg/3AW+DN3b+ieolGFsA53Q
         8FkSQ31djWFqnhb5vhrBFSYDyBn66Th2T2A+s52LuF6a6M46pj6yQzOMbenbNmZf9mbe
         WM1JtT9SzByvQif+iYAR2wvRmeo9e3cx7cpATzsUJPI58zdh8gV2US6kFeW5bacLmz1e
         7pZRibjzQPRlRy6BhI+DNsbGRu8WEU1l0S4gAuv3njxSVdoa3279peXFEKNWCcPHzvhJ
         y2NNMMYKlPxfeuVffrKdbWkn0a6HP1Y1xN3SzhLZ3kh4wOHVVz5f+WmLGPGMpZMMFqK6
         tNCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=CDvKwq6X;
       spf=neutral (google.com: 2607:f8b0:4864:20::841 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id b1si322805ots.2.2020.03.13.06.19.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 06:19:32 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::841 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id h16so7384298qtr.11
        for <linux-ntb@googlegroups.com>; Fri, 13 Mar 2020 06:19:32 -0700 (PDT)
X-Received: by 2002:ac8:44c7:: with SMTP id b7mr12649904qto.366.1584105571605;
        Fri, 13 Mar 2020 06:19:31 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a664:2e00:38a9:cfd2:746b:b1f5])
        by smtp.gmail.com with ESMTPSA id r29sm7761724qkk.85.2020.03.13.06.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 06:19:31 -0700 (PDT)
Date: Fri, 13 Mar 2020 09:19:29 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Logan Gunthorpe <logang@deltatee.com>
Cc: Takashi Iwai <tiwai@suse.de>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com
Subject: Re: [PATCH] NTB: ntb_transport: Use scnprintf() for avoiding
 potential buffer overflow
Message-ID: <20200313131928.GC13046@kudzu.us>
References: <20200311084917.18592-1-tiwai@suse.de>
 <03f25a1e-c72f-8fd8-d23e-f0da5e8d39b4@deltatee.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <03f25a1e-c72f-8fd8-d23e-f0da5e8d39b4@deltatee.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=CDvKwq6X;       spf=neutral (google.com: 2607:f8b0:4864:20::841 is
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

On Wed, Mar 11, 2020 at 11:08:11AM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2020-03-11 2:49 a.m., Takashi Iwai wrote:
> > Since snprintf() returns the would-be-output size instead of the
> > actual output size, the succeeding calls may go beyond the given
> > buffer limit.  Fix it by replacing with scnprintf().
> > 
> > Signed-off-by: Takashi Iwai <tiwai@suse.de>
> 
> Makes sense. Looks good to me!
> 
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> 
> Thanks!


Thanks for the patch (and review).  Since this is a fix, I had to add
some "Fixes:" tags to the commit message.  Since this is touching a
lot of lines added by a number of patches, it's a bit ugly.  But, here
is what I added.

    Fixes: fce8a7bb5b4b (PCI-Express Non-Transparent Bridge Support)
    Fixes: 282a2feeb9bf (NTB: Use DMA Engine to Transmit and Receive)
    Fixes: a754a8fcaf38 (NTB: allocate number transport entries depending on size of ring size)
    Fixes: d98ef99e378b (NTB: Clean up QP stats info)
    Fixes: e74bfeedad08 (NTB: Add flow control to the ntb_netdev)
    Fixes: 569410ca756c (NTB: Use unique DMA channels for TX and RX)

I pulled it in to my ntb branch with the above change.

Thanks,
Jon

> 
> > ---
> >  drivers/ntb/ntb_transport.c | 58 ++++++++++++++++++++++-----------------------
> >  1 file changed, 29 insertions(+), 29 deletions(-)
> > 
> > diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
> > index 00a5d5764993..e6d1f5b298f3 100644
> > --- a/drivers/ntb/ntb_transport.c
> > +++ b/drivers/ntb/ntb_transport.c
> > @@ -481,70 +481,70 @@ static ssize_t debugfs_read(struct file *filp, char __user *ubuf, size_t count,
> >  		return -ENOMEM;
> >  
> >  	out_offset = 0;
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "\nNTB QP stats:\n\n");
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_bytes - \t%llu\n", qp->rx_bytes);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_pkts - \t%llu\n", qp->rx_pkts);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_memcpy - \t%llu\n", qp->rx_memcpy);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_async - \t%llu\n", qp->rx_async);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_ring_empty - %llu\n", qp->rx_ring_empty);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_err_no_buf - %llu\n", qp->rx_err_no_buf);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_err_oflow - \t%llu\n", qp->rx_err_oflow);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_err_ver - \t%llu\n", qp->rx_err_ver);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_buff - \t0x%p\n", qp->rx_buff);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_index - \t%u\n", qp->rx_index);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_max_entry - \t%u\n", qp->rx_max_entry);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "rx_alloc_entry - \t%u\n\n", qp->rx_alloc_entry);
> >  
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "tx_bytes - \t%llu\n", qp->tx_bytes);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "tx_pkts - \t%llu\n", qp->tx_pkts);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "tx_memcpy - \t%llu\n", qp->tx_memcpy);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "tx_async - \t%llu\n", qp->tx_async);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "tx_ring_full - \t%llu\n", qp->tx_ring_full);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "tx_err_no_buf - %llu\n", qp->tx_err_no_buf);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "tx_mw - \t0x%p\n", qp->tx_mw);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "tx_index (H) - \t%u\n", qp->tx_index);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "RRI (T) - \t%u\n",
> >  			       qp->remote_rx_info->entry);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "tx_max_entry - \t%u\n", qp->tx_max_entry);
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "free tx - \t%u\n",
> >  			       ntb_transport_tx_free_entry(qp));
> >  
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "\n");
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "Using TX DMA - \t%s\n",
> >  			       qp->tx_dma_chan ? "Yes" : "No");
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "Using RX DMA - \t%s\n",
> >  			       qp->rx_dma_chan ? "Yes" : "No");
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "QP Link - \t%s\n",
> >  			       qp->link_is_up ? "Up" : "Down");
> > -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> > +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
> >  			       "\n");
> >  
> >  	if (out_offset > out_count)
> > 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200313131928.GC13046%40kudzu.us.
