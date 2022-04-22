Return-Path: <linux-ntb+bncBCHOPY7NVYCRBEUXROJQMGQEFRFWK4A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CF550BBC0
	for <lists+linux-ntb@lfdr.de>; Fri, 22 Apr 2022 17:36:52 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id e18-20020a17090301d200b00158faee4449sf4893758plh.21
        for <lists+linux-ntb@lfdr.de>; Fri, 22 Apr 2022 08:36:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650641811; cv=pass;
        d=google.com; s=arc-20160816;
        b=0CBgYZp+CU15Dk2DlJjnPuKWPmske918XvPGYAJs/Z7N1y7kjzFxcObtT6tnuyGc/m
         0R+2wkPQ6wjA5dzAxxn+X2OvZNFBpLYx3UBD+p7b3Fx0Xkb9HPVAxbQH7UnHwa8bbILU
         2pNdNUVQemhhXUtIUeGgDRWDwH2+ZlaFIiQGswBraAiS4EZUqUYbakYQ31OH0oImoyoP
         FOYS99LCFxAV9cdd5C7nJkRk6UOswbK0OKYLzG1Lj9y5vCubH8x/zvshWOKiXDTR+IqW
         Xwe8jZoDzdG9snmb1Nw0luN7aD5R+jSPAB3vVNW/BG7N15katzvLyjZNp0SA//89pWRx
         6lGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=E7AwbbV2pkqgnUqxvUXHNnvTzFyR+luzyzRUblVJNUs=;
        b=a310SuYASUmf3IiBck1QWJ0U+3fB228HU9eqT7OowV1wolheK3qRM/8sKWvzzaC2tE
         9iAYpaRe5veUn5NY8dlbXiTMjjf41RhKQxikp5neZcMdz0vqXWD5R/LL4VNkQZRH2kCU
         cR6+Xtrj14DSpnwlanmrt0WDceGrUTS2FH5T8wUYe7pGCgtypnh7vfBm3u/Q5mJqrHBi
         LbvF3M6ChztvEND0nrhkwUrEY+c4IHvRFXjtvPNzHmSVJPmy3MueaotKYPVddpSdQqrZ
         rv1J3GWnEUHFwtkLU95Axow/4q9XHh+wBz+sCF5kf/mf6RH/bkO01wqZgnsEdZYJJcyh
         iptg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=pZ1bA39T;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E7AwbbV2pkqgnUqxvUXHNnvTzFyR+luzyzRUblVJNUs=;
        b=TGHt8mcABE+Ltr4yAETEgsweBALzTs9yl5SbrzH1acIql7Q5o4sWBKMHFFj/d84kFz
         9BRdhdG6H2Z62x51+Cyf6JUTF2jFQfIdLwyI6EpH4uiyccVKCCEyI7w+xry844FSvHns
         4TIuadjwsP3UIz6+JEI6rmPk5TTL4tbQOulIxYktSYF79A5sX24/qHR+5SXyq5fd3tgj
         dXmWfrIU2FM8tPQqimrvZibsl+h7qi+0hQSTNCm9aDCK+BOvzk5SliLRBtxtCttvGNh4
         pMm4NLUNoi7iU2mydYyh4UaoGYUXBK+TDNWvOvrD/UzBsJn47Ef7yLAyAG2U/v2uhjvn
         jipw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E7AwbbV2pkqgnUqxvUXHNnvTzFyR+luzyzRUblVJNUs=;
        b=VhsLyv+ezx2I0mtEdYDX7yDhuH0Mn7Fi2FGrozeKVIDo8+stEPoN6Qo+FtS/sPnkF4
         +1IXAZ4uxhy4j7OXLxPzMiTTyNC34OoyoZpiSVHv+pW9SMSw2GYMsI3KUFW0d2jFGHEH
         rQdda5rcLzp7EfsCBTFqAFND1H7CraxyE5B51zbt5t85ZmUxZA3Awjm1d+MPcMtEEyNt
         HQujDw7a65z/Mcaasp6Ln2vHLePA4n1WIspfmDjKP+3BhfD+/E9XscMSXppP6PQIDlVx
         vVZ1ECvI95whIugnb6RuOSgl7LAxNSH5FcNFEcrLuyP+Sa6fCFpcojYhA11Uq7kW9/Dn
         C3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E7AwbbV2pkqgnUqxvUXHNnvTzFyR+luzyzRUblVJNUs=;
        b=jWqwSg4/GProJEoFzmCRvIR3zu4sE2+xLD6phia2vfGNOBEqnT3vGSPvCikqfOB/ua
         o0VzQjO44sMGUsfT4LUdvCpFfvR+PG3kZ/4JMC3Vqi8rvH7P5oNyfhxDafExqG+s5dIs
         4D+9RGBa4LbxRVuUlNnjzMkea1ScNDuwIKbPIhwcZLTPLg8P1j5X0orhdWFOqn1bKfg7
         y3hX8Zn4+q46Kmx7I4SujHE6MYNhX1ijXKTBMqwK0TrCojLpZEhn/Y2lvrdIEeCEGoIH
         nh9sNnzly0/Pzh7gqFGjAOrqhkRrlgfvrscISwQyqEkjVBi1TYobfQ1nhT3zC9X5cUbW
         adqA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533qJBmD5BfkTmlWFP1zvZUIoSTB16afd8XTk0Ij7n2JBZaDJ732
	I8FbD3umuitCH6Xp83vF7Us=
X-Google-Smtp-Source: ABdhPJwRr51Fbo7qXZNgpcvu1befuh5ZnScZjnw9+t6pqh84LdeueRtLTeY56vycrAfuZSkoK4YFiA==
X-Received: by 2002:a17:902:f551:b0:15c:96ae:a0a8 with SMTP id h17-20020a170902f55100b0015c96aea0a8mr1917413plf.133.1650641810987;
        Fri, 22 Apr 2022 08:36:50 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:c4f:b0:1c6:8749:f769 with SMTP id
 u15-20020a17090a0c4f00b001c68749f769ls7999694pje.3.gmail; Fri, 22 Apr 2022
 08:36:50 -0700 (PDT)
X-Received: by 2002:a17:90a:14f:b0:1cb:55d9:42d9 with SMTP id z15-20020a17090a014f00b001cb55d942d9mr6110331pje.196.1650641810373;
        Fri, 22 Apr 2022 08:36:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650641810; cv=none;
        d=google.com; s=arc-20160816;
        b=r01/U73oqSOyY0aitvm8/POWPHiJkZ8AJpm2tg3ot/ha1wC13TD9U5huCNmnwNYt8X
         QdwKXni7EIkPAOhIpa1uq7d6y2ZkAN/63AMu64ED1zjJsLM9bjNw3IVp7TdmxcAiAJQM
         599Kx/z2MkXsLSjvPSA5rBTbohj16aygU4G8DCCWglwoC6bFB8FKHpxb1TZ3/WUdVx7I
         heltpjtX0hZLOyCtCkDatjBqo7cfirDBxNMiIi+VwBIkAhvGA0g1tlfp+GL3VJxNiY2Q
         0fXPakyjZseNY4oMEHYKdGXwRNDZvuhjBJyLJ5rObwDP1rSpnbQaqVKIfuxRtwDvEJyN
         qd9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PMbulN97CYDSXiy6rlGtEqPLYRsGNjGkTOQ1u6MbCUo=;
        b=AY8Q6MD1LpdkAJT4bXezJU9Z8+9Pk/kxw4BixoEM5EhCPeso+Wp70iFhbPsspBMrdz
         2XDzFZpvOWRc1x/ulQXn7c72v5Z6wkEmwZgb7kjLiq98sqqLNEnS8VwfmaBLsxRlYxDX
         BKNLQVS/E33IxXNKXcpFAIWkMvXTCwys2ppc/kdZas5YVuRodnxmdSXMDJOfiadIvOgj
         5G9btQwaOe+j+woBsTzpwaBjpH4dVRuGDk5JSAwgsJc8cmo7Ctd8XcThIQA7zQM+1kVz
         KdraY5DRhoUDCI7eS2SMrHMu0XRy+wtldQDxJPBUJjs6a3aLD22LgzcLuPSrePl+HylN
         lg4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=pZ1bA39T;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id pc7-20020a17090b3b8700b001c75ad33c26si1074592pjb.2.2022.04.22.08.36.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Apr 2022 08:36:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lznuaa@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id k14so7642110pga.0
        for <linux-ntb@googlegroups.com>; Fri, 22 Apr 2022 08:36:50 -0700 (PDT)
X-Received: by 2002:a63:c22:0:b0:39d:a9ed:ebc6 with SMTP id
 b34-20020a630c22000000b0039da9edebc6mr4402917pgl.350.1650641809922; Fri, 22
 Apr 2022 08:36:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220222162355.32369-1-Frank.Li@nxp.com> <fa2ab3cf-1508-bbeb-47af-8b2d47904b20@ti.com>
 <CAHrpEqT2zwWiiiTUDAu9JNPXmzP1zELF7YDERWjdOohGMFRBnA@mail.gmail.com>
 <CAHrpEqSceNNQNAzCwbfiJc2Zk9fYCo5KqKmLZqHAG-7teSqF0Q@mail.gmail.com> <0407f63c-b422-bcfa-999a-5ef31a2afedf@ti.com>
In-Reply-To: <0407f63c-b422-bcfa-999a-5ef31a2afedf@ti.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Fri, 22 Apr 2022 10:36:38 -0500
Message-ID: <CAHrpEqRsOVs-MyTu2LcAwEGtC6V=n4-xURPZdESnR1rCTzzo0g@mail.gmail.com>
Subject: Re: [PATCH V2 0/4] NTB function for PCIe RC to EP connection
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Frank Li <Frank.Li@nxp.com>, Bjorn Helgaas <helgaas@kernel.org>, lorenzo.pieralisi@arm.com, 
	kw@linux.com, Jingoo Han <jingoohan1@gmail.com>, gustavo.pimentel@synopsys.com, 
	hongxing.zhu@nxp.com, Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, 
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com, linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lznuaa@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=pZ1bA39T;       spf=pass
 (google.com: domain of lznuaa@gmail.com designates 2607:f8b0:4864:20::531 as
 permitted sender) smtp.mailfrom=lznuaa@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Apr 22, 2022 at 10:15 AM Kishon Vijay Abraham I <kishon@ti.com> wro=
te:
>
> Hi Frank,
>
> On 21/04/22 1:52 am, Zhi Li wrote:
> > On Tue, Apr 5, 2022 at 10:35 AM Zhi Li <lznuaa@gmail.com> wrote:
> >>
> >> On Tue, Apr 5, 2022 at 5:34 AM Kishon Vijay Abraham I <kishon@ti.com> =
wrote:
> >>>
> >>> Hi Frank Li,
> >>>
> >>> On 22/02/22 9:53 pm, Frank Li wrote:
> >>>> This implement NTB function for PCIe EP to RC connections.
> >>>> The existed ntb epf need two PCI EPs and two PCI Host.
> >>>
> >>> As I had earlier mentioned in [1], IMHO ideal solution would be build=
 on virtio
> >>> layer instead of trying to build on NTB layer (which is specific to R=
C<->RC
> >>> communication).
> >>>
> >>> Are there any specific reasons for not taking that path?
> >>
> >> 1. EP side work as vHOST mode.  vHost suppose access all memory of vir=
tual io.
> >> But there are only map windows on the EP side to access RC side
> >> memory. You have to move
> >> map windows for each access.  It is quite low efficiency.
>
> I'm not sure I quite get this. EP HW has limited outbound memory to acces=
s RC
> memory irrespective of how we implement it. This is not a SW framework
> limitation AFAICS.

Almost all EP HW have limited outbound memory windows to access RC.
We face transfer efficiency problems if we stick into vhost.

> >>
> >> 2. So far as I know, virtio is still not DMA yet.  CPU access PCI
> >> can't generate longer PCI TLP,
> >> So the speed is quite slow.  NTB already has DMA support.  If you use
> >> system level DMA,
> >> no change is needed at NTB level.  If we want to use a PCI controller
> >> embedded DMA,  some small
> >> changes need if based on my other Designware PCI eDMA patches, which
> >> are under review.
>
> Adding dmaengine API to do memcopy should be simple to add in vhost/virti=
o
> interface.
> >>
> >> 3. All the major data transfer of NTB is using write.  Because TLP
> >> write needn't wait for complete,  write
> >> performance is better than reading.  On our platform,  write
> >> performance is about 10% better than  read.
> >>
> >> Frank
> >
> > Any Comments or rejection? @Kishon Vijay Abraham I
>
> I'd strongly recommend going with virtio/vhost based approach and standar=
dizing
> it IMO.

But No progress in recent years on this path.  At least, my patches make PC=
Ie EP
work as enet with minimized change.
And NTB don't conflict with virtio/vhost solution.

Frank
>
> Thanks,
> Kishon
>
> >
> > best regards
> > Frank Li
> >
> >>
> >>>
> >>> Thanks,
> >>> Kishon
> >>>
> >>> [1] -> https://lore.kernel.org/r/459745d1-9fe7-e792-3532-33ee9552bc4d=
@ti.com
> >>>>
> >>>> This just need EP to RC connections.
> >>>>
> >>>>     =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90         =E2=
=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
> >>>>     =E2=94=82            =E2=94=82         =E2=94=82                =
                     =E2=94=82
> >>>>     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=
=94=82                      =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=A4
> >>>>     =E2=94=82 NTB        =E2=94=82         =E2=94=82                =
      =E2=94=82 NTB          =E2=94=82
> >>>>     =E2=94=82 NetDev     =E2=94=82         =E2=94=82                =
      =E2=94=82 NetDev       =E2=94=82
> >>>>     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=
=94=82                      =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=A4
> >>>>     =E2=94=82 NTB        =E2=94=82         =E2=94=82                =
      =E2=94=82 NTB          =E2=94=82
> >>>>     =E2=94=82 Transfer   =E2=94=82         =E2=94=82                =
      =E2=94=82 Transfer     =E2=94=82
> >>>>     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=
=94=82                      =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=A4
> >>>>     =E2=94=82            =E2=94=82         =E2=94=82                =
      =E2=94=82              =E2=94=82
> >>>>     =E2=94=82  PCI NTB   =E2=94=82         =E2=94=82                =
      =E2=94=82              =E2=94=82
> >>>>     =E2=94=82    EPF     =E2=94=82         =E2=94=82                =
      =E2=94=82              =E2=94=82
> >>>>     =E2=94=82   Driver   =E2=94=82         =E2=94=82                =
      =E2=94=82 PCI Virtual  =E2=94=82
> >>>>     =E2=94=82            =E2=94=82         =E2=94=9C=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90      =E2=94=82 NTB D=
river   =E2=94=82
> >>>>     =E2=94=82            =E2=94=82         =E2=94=82 PCI EP NTB    =
=E2=94=82=E2=97=84=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=96=BA=E2=94=82   =
           =E2=94=82
> >>>>     =E2=94=82            =E2=94=82         =E2=94=82  FN Driver    =
=E2=94=82      =E2=94=82              =E2=94=82
> >>>>     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=
=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4=
      =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4
> >>>>     =E2=94=82            =E2=94=82         =E2=94=82               =
=E2=94=82      =E2=94=82              =E2=94=82
> >>>>     =E2=94=82  PCI BUS   =E2=94=82 =E2=97=84=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=96=BA =E2=94=82  PCI EP BUS   =E2=94=82      =E2=
=94=82  Virtual PCI =E2=94=82
> >>>>     =E2=94=82            =E2=94=82  PCI    =E2=94=82               =
=E2=94=82      =E2=94=82     BUS      =E2=94=82
> >>>>     =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98         =E2=
=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
> >>>>         PCI RC                        PCI EP
> >>>>
> >>>>
> >>>>
> >>>> Frank Li (4):
> >>>>   PCI: designware-ep: Allow pci_epc_set_bar() update inbound map add=
ress
> >>>>   NTB: epf: Allow more flexibility in the memory BAR map method
> >>>>   PCI: endpoint: Support NTB transfer between RC and EP
> >>>>   Documentation: PCI: Add specification for the PCI vNTB function de=
vice
> >>>>
> >>>>  Documentation/PCI/endpoint/index.rst          |    2 +
> >>>>  .../PCI/endpoint/pci-vntb-function.rst        |  126 ++
> >>>>  Documentation/PCI/endpoint/pci-vntb-howto.rst |  167 ++
> >>>>  drivers/ntb/hw/epf/ntb_hw_epf.c               |   48 +-
> >>>>  .../pci/controller/dwc/pcie-designware-ep.c   |   10 +-
> >>>>  drivers/pci/endpoint/functions/Kconfig        |   11 +
> >>>>  drivers/pci/endpoint/functions/Makefile       |    1 +
> >>>>  drivers/pci/endpoint/functions/pci-epf-vntb.c | 1424 ++++++++++++++=
+++
> >>>>  8 files changed, 1775 insertions(+), 14 deletions(-)
> >>>>  create mode 100644 Documentation/PCI/endpoint/pci-vntb-function.rst
> >>>>  create mode 100644 Documentation/PCI/endpoint/pci-vntb-howto.rst
> >>>>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-vntb.c
> >>>>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAHrpEqRsOVs-MyTu2LcAwEGtC6V%3Dn4-xURPZdESnR1rCTzzo0g%40mail.gmai=
l.com.
