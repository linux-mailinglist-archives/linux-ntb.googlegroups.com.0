Return-Path: <linux-ntb+bncBDQMLV54ZQERBV5R4SOAMGQEYNUKIQQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 104B864C128
	for <lists+linux-ntb@lfdr.de>; Wed, 14 Dec 2022 01:29:13 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id l6-20020ac25546000000b004b55de13741sf1765476lfk.6
        for <lists+linux-ntb@lfdr.de>; Tue, 13 Dec 2022 16:29:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670977752; cv=pass;
        d=google.com; s=arc-20160816;
        b=H4tRzretpRDlrmEHZadNBWMf+EqxVD2CLLuT75KmHJDzJ3WHhp6j73gwr9w++k7Bgq
         bkUDHjiX+bBEoBieUoiHZbfLwucu0OlNXoI+6IGdU9Ar6zwiUYisRO1iZMmESY9dJ4TX
         M4gBtJvwRbQdKAXpkeqIItXZiHwfoHGtIgMfOtcXcFfYJgJg8TlPU2F+XKs6cWqcVbAh
         oITBak7lSzdnRngydu43XrV0GCq+C5s3IxSGrCq3YPgqq8ynOgW9pHLfMlmPCD2CQtml
         z/cRweA0W8idWfUTTraHlSOo5/BrHBxNo+Ki/GNiJgx2fS4HWLuUbAsmQQ5FtxFd+rL7
         j6jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9sBz91EfkGY8mT5nXamuHKLRpcaYdxpxvp07Ivhf91c=;
        b=NCbal1m52FmSqYvmoFzBw72G4fn+pJAyxVYI6agGZNSMuOcdxK2PlXkXXzqN9Zz4QV
         8zhBRLQnCUSuNPxemyku6g7l4cJVCvPJsbKU9YSU/nSVDewNr4DbRKdzE55hBVGyOqZ9
         Qa3cZiLKguC15aaLmVVqRnKDaoBshCw8N5JPl1/nK4pnn8CfAalTPCJWvxrXOZuGvQE9
         eMFNKQoXnWwDiyb+GTzHCBRjDL3CKrrqA4mUyndpkVc3bsk99g8P1Q825klOWBJFkQty
         zHIwNbpBjofJSD9amonYcPfEbIM14noYyUWyu1oQDQ0juMgnal3/huAebyv+bWEn79/N
         i0gQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=LeV0NfTO;
       spf=pass (google.com: domain of bjorn.helgaas@gmail.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=bjorn.helgaas@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9sBz91EfkGY8mT5nXamuHKLRpcaYdxpxvp07Ivhf91c=;
        b=UcVS4I8HSxrbvKUP2KnSpPAXoTKGbq1rZldFwUS+G/oOWT1YSTVyKeqSF9owT1fiPA
         I/ghFqrXc56YH8ZLhT986bSRDP2DwsyLuhR2pxwZQbneVxSzkW4Cz4t0snQzZ55dvkuu
         DriLLv1jjC2mgCDYV9dkYonrqLjuUVaR7tR44cZ36fwNFPAVcBozaBdeA8Y7i1AMG8vp
         lEcze8hqHRNXaIT97SlGFZVAYZ47zJ99hr/fB2Y0ZlMKeTLBnSyFvTVDYhXrojjbF6lW
         ewsR6p+9lJb9kvLl0jSaNtEmjO8GupxyXg/VcSIVlpesbSUQq/fvg0L8VK9hSh7DH3ZK
         DyIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9sBz91EfkGY8mT5nXamuHKLRpcaYdxpxvp07Ivhf91c=;
        b=P95uHx1n0yrpqrj39zPNmLfATwSEoz40xeFlKAoSkUIc2ClWYLQxhSqhV2lXnBmY+a
         2FGUUdbB9I0HIHm3REJ/lC0BvXwH6Xh6HQYiLFkOZY58XQpiBn0vh+nnrSz9ZhIh21C/
         Z5hZ3+fKoG3lwtQgi/VFqSiUN0nQ/sGDonu6T4S0jCaJbl6IS3jsm0WtSEanLiN58h7A
         6NUl3dsjupeCez6SJWt67/u+EomWe5OHQ2u1el+E/sjhz5Uu9j2UEyBNenyN0Zb/BhzY
         QaYyULtg/BHrW4/UdfEN9IhPySCXs+LjkwD1PckNOtT5DXku8iapLJKNR1aXjbYchZP/
         xJyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:reply-to:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9sBz91EfkGY8mT5nXamuHKLRpcaYdxpxvp07Ivhf91c=;
        b=ntMrxF3BPRvT/49oigYRZslxT4ogLaECUjwPYeUFn+eh89iEzIkBIYJ6CjQFsBQHO7
         +rQmZJUzE8H2bdbXUJ8Yp/O66/zjJSnD0/bMbyV/3cQACF7OsMiSa9GpbJ7QZZQwzsl3
         JiYrAsYTtq3ex+6AIoop8WIwHJ2JRYJtwZKgUvoyow1wl8CR7xhvP9id3XuASyHE9J20
         Ja64DR837wznmHDRoD27vW1FIYAVs3bjbRHgrcxjs/TrqoLyXwOVp2jRlIn91f1o1QEg
         xSUE6bx6b7snAG6zOJ5iRd5gUjkMkl1adSEF8euaspURf65cJ5SCSo8iC7q/HfQGEjdy
         +guw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANoB5plWQiDDjVm+Ju/shuuJxFiNhCeLN/seOYmX+91X0zCJf8gbxj38
	p2LbP8Inj4k8kmOQRic/UMk=
X-Google-Smtp-Source: AA0mqf52P59Hyoxski2WazSaX/eF65chgTIBI/W0/YxoYvJDsZVz0+TM9q2mDB0ssran2fBVIHQ29A==
X-Received: by 2002:a05:6512:2625:b0:4b5:5077:49e3 with SMTP id bt37-20020a056512262500b004b5507749e3mr12097844lfb.296.1670977752262;
        Tue, 13 Dec 2022 16:29:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:bd11:0:b0:27a:3eb5:4759 with SMTP id n17-20020a2ebd11000000b0027a3eb54759ls1464560ljq.0.-pod-prod-gmail;
 Tue, 13 Dec 2022 16:29:10 -0800 (PST)
X-Received: by 2002:a2e:a58c:0:b0:277:4f:bd55 with SMTP id m12-20020a2ea58c000000b00277004fbd55mr9696350ljp.20.1670977750621;
        Tue, 13 Dec 2022 16:29:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670977750; cv=none;
        d=google.com; s=arc-20160816;
        b=S0TGaHOzES34PuDCKnwa+VLpW8YNa+i8z3g4GUdCveYycTwq1tA12FVavHc8Kgv2wN
         kYrTtigMjk5215y5d52pPjhuJlCa1WuQrRc+NHP5AQLgKg3RP8axNh8CwvHvXPFdMxfG
         TqFPM9414Z8I6NfcQkpss7K5DpvdXdCiXVC5Evt0np+KzoWQGWAHY5rkNNEoyPpuq05e
         aei9VhO79VpSlJIGjPUtBkapCHokKyjI9BJ8NeGb9rJTGrzaSFojY58FKXz1lAh2N/OV
         tuwEhIpigfG2cmzcBP1k4I/R8gM17r6EH4WkwGVTXl3AovEDa//lbBv1fYulhBlFmpCw
         W+Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CPdIl7j3z87XMoAtuQTYb7H6hS/X8Y8wZw0h0XqYJts=;
        b=CjHKrqHUgGZr/YNAcRgkHLd+7vUUjeAAKllEYS+4YZczsrNEdhnz4ubDXdAQhrob8C
         tsx5z/pfjhFX+X0rorceQT0enCwxj48Loz+lD7cHrLTZR9Wmc0rXMNrbs9UaL+jTFsZf
         FrEIYgXC/BHKlCRpkqI4xrYF67ffigGwXEyWbjShHnGWXc/H2B6jPipyuQAg+TyAwoVY
         r1c6igO3GO/fB/nVDPPHKnxBOk1FXjH7crY2LuSrlLrao74Fm/SFfPy+w3iHFDn+lAhO
         crcA81Jy+ClX8JJ+KvSzuguniEk9YX21/osOqXNl7iVDhKPM9STDdoq1l8XwMmnTgf5k
         To4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=LeV0NfTO;
       spf=pass (google.com: domain of bjorn.helgaas@gmail.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=bjorn.helgaas@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id k24-20020a05651c10b800b00278f552596bsi210979ljn.2.2022.12.13.16.29.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 16:29:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bjorn.helgaas@gmail.com designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id s10so5156677ljg.1
        for <linux-ntb@googlegroups.com>; Tue, 13 Dec 2022 16:29:10 -0800 (PST)
X-Received: by 2002:a2e:bd07:0:b0:277:31b0:8ba3 with SMTP id
 n7-20020a2ebd07000000b0027731b08ba3mr33548130ljq.290.1670977750194; Tue, 13
 Dec 2022 16:29:10 -0800 (PST)
MIME-Version: 1.0
References: <20220222162355.32369-4-Frank.Li@nxp.com> <20221214000848.GA221546@bhelgaas>
 <CAHrpEqSGySHDET3YPu3czzoMBmCRJsgGgU4s3GWWbtruFLVHaA@mail.gmail.com>
In-Reply-To: <CAHrpEqSGySHDET3YPu3czzoMBmCRJsgGgU4s3GWWbtruFLVHaA@mail.gmail.com>
Reply-To: bjorn@helgaas.com
From: Bjorn Helgaas <bjorn.helgaas@gmail.com>
Date: Tue, 13 Dec 2022 18:28:58 -0600
Message-ID: <CABhMZUXcTst3F1jvpa6ijWgVDnX4k-s8c3m=zBoaEiQaj_Xu1w@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] PCI: endpoint: Support NTB transfer between RC and EP
To: Zhi Li <lznuaa@gmail.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Frank Li <Frank.Li@nxp.com>, allenbh@gmail.com, 
	dave.jiang@intel.com, gustavo.pimentel@synopsys.com, hongxing.zhu@nxp.com, 
	jdmason@kudzu.us, jingoohan1@gmail.com, kishon@kernel.org, kw@linux.com, 
	linux-ntb@googlegroups.com, linux-pci@vger.kernel.org, 
	lorenzo.pieralisi@arm.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: bjorn.helgaas@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=LeV0NfTO;       spf=pass
 (google.com: domain of bjorn.helgaas@gmail.com designates 2a00:1450:4864:20::236
 as permitted sender) smtp.mailfrom=bjorn.helgaas@gmail.com;       dmarc=pass
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

On Tue, Dec 13, 2022 at 6:17 PM Zhi Li <lznuaa@gmail.com> wrote:
> On Tue, Dec 13, 2022 at 6:08 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>> On Tue, Feb 22, 2022 at 10:23:54AM -0600, Frank Li wrote:
>>
>> > + * +--------------------------------------------------+ Base
>> > + * |                                                  |
>> > + * |                                                  |
>> > + * |                                                  |
>> > + * |          Common Control Register                 |
>> > + * |                                                  |
>> > + * |                                                  |
>> > + * |                                                  |
>> > + * +-----------------------+--------------------------+ Base+span_offset
>> > + * |                       |                          |
>> > + * |    Peer Span Space    |    Span Space            |
>> > + * |                       |                          |
>> > + * |                       |                          |
>> > + * +-----------------------+--------------------------+ Base+span_offset
>> > + * |                       |                          |     +span_count * 4
>> > + * |                       |                          |
>> > + * |     Span Space        |   Peer Span Space        |
>> > + * |                       |                          |
>> > + * +-----------------------+--------------------------+
>>
>> Are these comments supposed to say *spad*, i.e., scratchpad space,
>> instead of "span", to correspond with spad_offset and spad_count
>> below?
>
> Strange, I received some of your comments on the very old patches.

What's strange about it?  I went to the trouble to look up the patch
that introduced the thing I'm asking about.  I sent the email a few
minutes ago.  The question still applies to the current tree.

Please use plain text email on the Linux mailing lists.

Bjorn

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CABhMZUXcTst3F1jvpa6ijWgVDnX4k-s8c3m%3DzBoaEiQaj_Xu1w%40mail.gmail.com.
