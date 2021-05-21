Return-Path: <linux-ntb+bncBDRJHDHGTMIRBG4TTSCQMGQEC4P52CI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF4338BB6A
	for <lists+linux-ntb@lfdr.de>; Fri, 21 May 2021 03:15:08 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id l19-20020a0ce5130000b02901b6795e3304sf14950823qvm.2
        for <lists+linux-ntb@lfdr.de>; Thu, 20 May 2021 18:15:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621559707; cv=pass;
        d=google.com; s=arc-20160816;
        b=pUVV6iUfF3/blTpLV/x/W87UyYVVW8ulPXNuBggb+2umii54O4z87+MGx6EQjyMdsg
         ZxjHdjmtKu7EJOC5yzgvzzXtZ/zepoYCY244L62zrfJXbEpkL0PjYEmXWJwhxTz496jp
         JjUviLJb0HLBWVFq2jvve0016vIdhqCXrh7X6wFGb+Bd7F2gVFiW9ROkeQIgZWCaKt05
         cm6UYwxASVgMIEgim95odmqod73S6FjtcbOSxx9zm5gr9U0bfujqSaw116iLVwbv/PUA
         Yb+Sj8Gg0gQPfzQqk1N9/8isXbK8oLRrvPEAaJfq9jXnjoIH3FIO4Mdr1KCSq0fwavyF
         yvUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=+5N73UZAzuyZhKhyNDIgmNCb19vqSQ6XG4ZUiX4RLyM=;
        b=z0AcLGNC2jnLatHVlHyU3im066diEEfJVQNyuJ6jGG37Yq9n8jyUSAw/Gfqv2Va35z
         1eUX0oqzlVsQ8ZCTs38qnlAOReV7RR5yPmA4FV3iAIUlFShU5f2/DM4ZitTko1RvUhcL
         fhfoMruKqtqCvIFp2C/IvloTkX+S7TM3/bYa/Rh/5R66SiY6qjvUbywzYg4PVOz8/Iyq
         bXAgqT3nzNV/tGRmsrc5lIC9OGrJ0yLfbN4XMSxnk8XmtfcZSQZ9qijxyyAZ8tBzc2Rx
         wS2KfPbKDHF7NH1ZoFTCg/D4L8d4LjCypL2uDCQAI+DxPmOVKHZ+8IMb4eZob2cP8lLm
         CyaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ixsystems.com header.s=google header.b=ZKJBb4pj;
       spf=pass (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=jkirsher@ixsystems.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ixsystems.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+5N73UZAzuyZhKhyNDIgmNCb19vqSQ6XG4ZUiX4RLyM=;
        b=j362kr2lKclDn5jL9fs2dov8SRGuQCvIVcVbgVShfJPO2jarrKCqpw5lQTPauvpDgD
         tIq3eM0iozRCqpIVMbDsX/jNG21b+h9ocYu2SksDKuPvWgldKw4rogRdUr4tkShecTer
         iIronKvMYYqNzJB/ZBtixF8Ws6S49T1PZK8CVb2VHaVBgrlY7m0zK+PZ6IAUMrab3Kxr
         LUAV06aeVxPOGebUBsWIG32t6dPPMriCwS6EL3eAXm3HVSu358EeyigAHrc49iCxS9fl
         v/OdlrMgeJaPl2snmjDxVFptd1IFuMALMOv2OyVvvzImlyICjPC1c8uYwUIf0aqOMoc0
         1aXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+5N73UZAzuyZhKhyNDIgmNCb19vqSQ6XG4ZUiX4RLyM=;
        b=Lfmd6EmlwEO1X90QUPaAn+CU7VTBPgQnRRbzJlIM/2ATUlgj9exQGn4bOFL+276gAY
         ovYHh7U4lN///LaZqm8M3Jsx77sa5GyJ3xdBQ+qARasRrKlqO4BWci0zAdr9hjfLA1y9
         sasLBqQ5GYL91R4/sefY8KrdtvR3F25iNedtcSg+ivyEA2Me1Iq0/OXduYz3YsGvrY14
         DQJB0G8GDYAVYxAh0lhDXCN0NaAobmQtMLAQz969ympD8aFPsnHNoeHGWmsIHrMppP/Y
         aDkfdufb+jr4xLq2Uz103yq5+xfr4eHE2RQx2R4YM/k2lUF07macwEitjtOuvGJ2pv0n
         U55A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533hpRY0OKRQPZPYHXScsz5t9SkK3ZKkl2Gd2BNMfuzuSReQR/ch
	jLnjjQJoJM7cINInYMENuDI=
X-Google-Smtp-Source: ABdhPJx8LXiMZkUuZGc9bYBVY3BPtZM0RuMGXoXfppNPHXBQNPwhe5xlxxFp/L/p1fULS2nE5geg3Q==
X-Received: by 2002:a37:e113:: with SMTP id c19mr9582461qkm.329.1621559707328;
        Thu, 20 May 2021 18:15:07 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:5881:: with SMTP id t1ls1835170qta.5.gmail; Thu, 20 May
 2021 18:15:07 -0700 (PDT)
X-Received: by 2002:a05:622a:1189:: with SMTP id m9mr8485235qtk.277.1621559706943;
        Thu, 20 May 2021 18:15:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621559706; cv=none;
        d=google.com; s=arc-20160816;
        b=t8TJDspJ3MBsMHUs1svU3cKwB/hH3By1urfWLz4Ql+qmFV1zxCO2Ox3bqbgJuxq18g
         KcpPFtOZLGQlKZX7JYISZ46Dk9VrOeWsRnFdVYFZ029Yi6+wbtkdBld/N/YlnCI0Ppol
         bXi4gML8JKjgDmD5zcnxw8X/gk4fKOVoGzNR9jJFMu2Exd8rynxOUqU588ou+fOpyDL4
         AtfcMl6QhXQjdWF+/YAl7opBLZYbQS/0Dnh7GCZs22fOCAlwM6lhfxauv6W7lmm41uJJ
         9BxJM33uLZbVT3+48eOP0S4nhCrgtqEyub90I0UhLyeUvLYsQoOR3pBIwb1/AIsqc12n
         TmZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=UTuOy8CdJEnlX/AMSEzNLP0spmOrzd1Mo7nLnhSkY/s=;
        b=eZcC78P3/zrBp+FR5dnKqszQ4hq53sik1X2wawnArb7ph8GLXb8liFPNEyZ8+oZQ/n
         6PY+e3ZXoQZdb+qmqR20qvIv9/n2zp66yLHyIpF4UT1YIEh/wEyZ95LAR7/idXWNifzo
         KPLA3ebFh5zTk07/QJ3d36UtqENsKHlu6zIF06oCZ6w7vJDVI/i9MhXjX6R7uD952VAH
         lvdvEzIUoBA/sspr1gLgvv1+3rPWZ2+C1zL3PoiLnr6h8hFPXAjji6esVKFu/iYMzh1S
         wteRdmoe28QW12yXHPqgzafvaLU4Nh/2nubqBvO2IJ6n+aeeR+vGw724iLL2CkYnBnuf
         Vhvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ixsystems.com header.s=google header.b=ZKJBb4pj;
       spf=pass (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=jkirsher@ixsystems.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ixsystems.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id y24si579658qtm.0.2021.05.20.18.15.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 May 2021 18:15:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id d78so12834431pfd.10
        for <linux-ntb@googlegroups.com>; Thu, 20 May 2021 18:15:06 -0700 (PDT)
X-Received: by 2002:aa7:9632:0:b029:2dc:6ef5:b1d3 with SMTP id r18-20020aa796320000b02902dc6ef5b1d3mr7340113pfg.53.1621559706097;
        Thu, 20 May 2021 18:15:06 -0700 (PDT)
Received: from [192.168.0.10] ([75.164.25.153])
        by smtp.gmail.com with ESMTPSA id o9sm3164848pfh.217.2021.05.20.18.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:15:05 -0700 (PDT)
Message-ID: <be97b20f0c376a2e6647a7222ee3a5937e47dbf7.camel@ixsystems.com>
Subject: Re: [RFC] ntb/plx: Add support for PLX hardware
From: Jeff Kirsher <jkirsher@ixsystems.com>
To: Logan Gunthorpe <logang@deltatee.com>, jdmason@kudzu.us, 
	dave.jiang@intel.com, allenbh@gmail.com
Cc: linux-ntb@googlegroups.com, Alexander Motin <mav@ixsystems.com>
Date: Thu, 20 May 2021 18:15:04 -0700
In-Reply-To: <533937f2-7d41-7bfc-9323-e67c8d4878c9@deltatee.com>
References: <20210520222323.104901-1-jkirsher@ixsystems.com>
	 <ebfdfe78-67f2-2096-5e89-bd1b65fa819c@deltatee.com>
	 <feeea59f0612d257591cd14953d31c5f1482c012.camel@ixsystems.com>
	 <533937f2-7d41-7bfc-9323-e67c8d4878c9@deltatee.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34)
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jkirsher@ixsystems.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ixsystems.com header.s=google header.b=ZKJBb4pj;       spf=pass
 (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::429
 as permitted sender) smtp.mailfrom=jkirsher@ixsystems.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ixsystems.com
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

On Thu, 2021-05-20 at 19:13 -0600, Logan Gunthorpe wrote:
>=20
>=20
>=20
> On 2021-05-20 6:17 p.m., Jeff Kirsher wrote:
> >=20
> > Is this something new that all NTB drivers are expected to adopt?=C2=A0
> > Just
> > asking because I used the Intel and AMD drivers as examples and
> > they
> > are still using pci_iomap(), etc...
>=20
> I can't speak to expectations, I'm not the gatekeeper, only a
> previewer
> passing by.
>=20
> I believe they are newer than the AMD and Intel drivers and there are
> new ones added here and there. I think generally, kernel wide,
> they're a
> better choice. You'll find your code will be a lot cleaner, smaller
> and
> easier to understand if you adopt them.
>=20
> Logan

Thanks, I can make those changes.

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/be97b20f0c376a2e6647a7222ee3a5937e47dbf7.camel%40ixsystems.com.
