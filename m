Return-Path: <linux-ntb+bncBCHOPY7NVYCRBEPOVGIQMGQEZ7FYL6A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0710B4D5433
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Mar 2022 23:09:22 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id v2-20020a2e9f42000000b00247e9c3f0e1sf2815471ljk.1
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Mar 2022 14:09:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646950161; cv=pass;
        d=google.com; s=arc-20160816;
        b=zCLaXHZQyux+XZ0PWv4LQP0lf1Cqi/PRoBsQdmvcOAncPwze/p0kiR/BC5olQZ2/sE
         nulvRB8ZZf9IX7vRAMYfkAm/PJ2EZ4ioF0uD51R6oKsAoVkCNwI32lHHk0YbN6GBqaNn
         lHBtO6cxd1ubsS1NZHDOjgPXcj2RLHGuJiXXc3wFaYf1fmeGqfQVL7HFoL3mqoEsIrfR
         cnLP5Wh8bXVwyXwW8YnOdLfzCXz+OImlderxux71zoaoMyC45sQF95cA8wdntIlKsXNv
         6OSAIMeY4yp5w9ivpKI8+XTF+DQi8+1oWc7q/MHm+TKSmpDyCTkeqa1gHjqb5gREK/HS
         61mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=ShPRgjVMcZO0Q9V8WWJPpCqBkItKiaMeFkMK+nc9o+Y=;
        b=ObNZij6xfT8P/NxReMz+VVkGRvcep+zPFQlkf3kb27rqvBgsfA+Vwcm5LoXxw5RnT9
         /JK2+3yQ2y8ZcNNMj918AD/rmBY77m4ZfAybdDMp9CTAiTIBy/HRbrdLQ8wefFmRfSfU
         2PXBz8hQcgzgkTxXBv7M7+ExX/VVUr8ZlnYnITPfxbR4oBejxOjqAXhZ0LZYd2HJ+lHf
         j1aMqkvfbaD6jSryyigKtK8YUrOL1doxNq09S8yntYpl1AppDwri1xYkJPVvlJ0Vo04P
         by+pEB9s05/sD9GrVG9iv+6wUkg65be5mu+c0odqNER4aVptVcXGnj9BlsYJDjSZavgj
         xr3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="gl/gDjwQ";
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ShPRgjVMcZO0Q9V8WWJPpCqBkItKiaMeFkMK+nc9o+Y=;
        b=HCdn/LMvUZ3lQIX7IYowiS/Kew0LSsP0OJW3JHZ+cpnNPyiCc66HZR0717/slRHFHp
         gGpcDmoLmgFNbafual40WDH+pEK9bMxXfBU3ORCfHjk/lQOmE9raJrFKzJBolbb+ftQP
         NNgUlwov4b03Og1/BbCHy8QmPaKaB17DGSNiLvC5fPMSF7+uDLathT6DfoNp7+xO/5Sp
         87XVGf1HyBF9zwNtc7e74fK1J/Y/MkyyBPUh3R63486juuWT0oxjR8k1zceZgXbkSK0/
         h+2qoiZg2w8PrLvd96BSLncg1Efj2bzKI8Th02xZ3B54gVh7SY4lfmM4nBIvC2OhybSV
         Tahg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ShPRgjVMcZO0Q9V8WWJPpCqBkItKiaMeFkMK+nc9o+Y=;
        b=acyj4OEQxjAsTs/DtCJzednW6MlUITYgiij7qoDOvU06NpRxfDKOMUMgUSSRr3V2iI
         YehiwTkpqAneG73gHtVsn50RBs1zQlKjmSSR9B/MPqMOwA4Pq610NPVMz66JCPE6E1iJ
         rKTXDprVjaJnkP672cAsAHEII5V3qny8vwtATd/8VQ7ZxXgOVYETqVlS061v0AcCM452
         MUkc3a0+EqGdmGKd/SJfAh5KZdql6cHVcUbq+cwCm4inBxOU63X7ehq/DMM++jV5aWek
         J4Ko03r/f6j3GdzzLmaXOHNd3WLQJb7RWZ9MjZtfkUwhF+JXDflaZNFn3kCSV7+9rrdQ
         1IjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ShPRgjVMcZO0Q9V8WWJPpCqBkItKiaMeFkMK+nc9o+Y=;
        b=RKi5eZPQQN+8mtDz220AdZuJhTaiyVwANUi6j3QgD3WJVdfQPUBS37deqMTppdgq6p
         cYU63McjEmOGJz8HJ+YEoHBI1rLmcd99f1sb8YJFyE2x0NCwL6eLsBVh7F/kgLgIarPn
         0exy+XyEz/GODW+Oe7kFypbK9oqS+egTQwPPt4XeoCEMmlGeq24406Uige0UZqGJjnbO
         k42bTnlFcj8fJvBBowOQetaFMJJBgsXqdA9OX0TZfZwE97NbcsD+Ef7nQ3+ZCqrCyVIK
         KPVWoigsQevfI+m0aoW9LYx7VpStjxWYuzTpbqCyhfLCnZa46GHAv3mY9cKxiue48bvh
         FLZw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531Ie7c5k2k97wffcelRijCmQC4iOBgW+KwjIvWZeImHi8lAbfel
	0FmSJxB2NBd44I9bgm4dQWw=
X-Google-Smtp-Source: ABdhPJz7ZdD6FoUPaM5OtcobV9rL9BDGS6uzKfGxulzhuUZeBiYLRLu96/HJT3vQGLa9+4POYGVGRg==
X-Received: by 2002:ac2:5f0b:0:b0:448:1e32:4531 with SMTP id 11-20020ac25f0b000000b004481e324531mr4081747lfq.167.1646950161322;
        Thu, 10 Mar 2022 14:09:21 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:1282:b0:448:390c:1de8 with SMTP id
 u2-20020a056512128200b00448390c1de8ls5042625lfs.2.gmail; Thu, 10 Mar 2022
 14:09:20 -0800 (PST)
X-Received: by 2002:a05:6512:1690:b0:448:2372:3e3e with SMTP id bu16-20020a056512169000b0044823723e3emr4221562lfb.324.1646950160266;
        Thu, 10 Mar 2022 14:09:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646950160; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4m7zTTwX8fmdxQWV+Z2Xm7sSgEMLArvEZE0qkXryQ//uZst6pteF8Sj8kOtcZ8hvQ
         koiKlfQ9zKIMTVwoPHb/+HH2N74PDjgC2yf7okXabpkW8/8NOzusYuU+HVBtnVLVDAHb
         wX+Wi5L0RUtadUnx9L1LD5lUnpy70h+CKbBhNduf+vksLJ+MgVd2jUFagYVXJ9jcA43O
         RG5jhYoMKEYLhV2VHFC1qKd8mMVsR0B1ApnNRiB483+UqUHCkFgKmjbZ9bkGpZFLjJ1S
         uSxtZ7CK1TZ+vrMUViui3G+0NysF/yBF+MzliqxRqdwDIFPPvuN0kbjFB8z8K+Na87K5
         MHHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=v1t7jMTcL+z9CmZNyXfRcpTL04s9RAN7pLHLlA34QVQ=;
        b=FZwQLn95/1Op+LRLGQGXzkSuUvfUktY9EHrl0znGaoldww5nHRfzwjSiqny9CycTqc
         Z27GsT9Qa52ZG9t6iL7kMhUdmcI/mHJzyc1yji8Cz+EWbmdvkMuQ1qTo9DB2QBtZdp/Y
         fsTn/8DkF1XMAJyCxhpKSB9DozlH8oBK98GZgD/GCg72tyA7RCKCsWAxezZBX+OSHghA
         Ipr/rHjfDdESrJSbvtZF4ONMzpUtbe7oFEnqwFnTcP6LNjxdETfwtf6z2RVcBGQ1mbNX
         RLMDoP+PcD4eDfpBr6JtU3OoTkqyMDMIxA/cb2QS8egTu/6cSH5pKMnAXq1lkkzkCS28
         htCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="gl/gDjwQ";
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id y10-20020a19640a000000b004481dd0bdb7si349187lfb.10.2022.03.10.14.09.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 14:09:20 -0800 (PST)
Received-SPF: pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Received: by mail-ej1-x62b.google.com with SMTP id kt27so15289520ejb.0
        for <linux-ntb@googlegroups.com>; Thu, 10 Mar 2022 14:09:20 -0800 (PST)
X-Received: by 2002:a17:907:d90:b0:6db:a372:e61c with SMTP id
 go16-20020a1709070d9000b006dba372e61cmr282809ejc.276.1646950159518; Thu, 10
 Mar 2022 14:09:19 -0800 (PST)
MIME-Version: 1.0
References: <20220222162355.32369-1-Frank.Li@nxp.com> <20220222162355.32369-4-Frank.Li@nxp.com>
In-Reply-To: <20220222162355.32369-4-Frank.Li@nxp.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Thu, 10 Mar 2022 16:09:08 -0600
Message-ID: <CAHrpEqRVKKHosaf32QPXKEFEY2yeACNoJ-ohoAixBehNO=u3pQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] PCI: endpoint: Support NTB transfer between RC and EP
To: Frank Li <Frank.Li@nxp.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, kishon@ti.com, lorenzo.pieralisi@arm.com, 
	kw@linux.com, Jingoo Han <jingoohan1@gmail.com>, gustavo.pimentel@synopsys.com, 
	hongxing.zhu@nxp.com, Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, 
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com, linux-pci@vger.kernel.org, 
	ntb@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lznuaa@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="gl/gDjwQ";       spf=pass
 (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62b as
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

On Tue, Feb 22, 2022 at 10:24 AM Frank Li <Frank.Li@nxp.com> wrote:
>
> Add NTB function driver and virtual PCI Bus and Virtual NTB driver
> to implement communication between PCIe Root Port and PCIe EP devices
>
> =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90         =E2=94=8C=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
> =E2=94=82            =E2=94=82         =E2=94=82                         =
            =E2=94=82
> =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=82   =
                   =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=A4
> =E2=94=82 NTB        =E2=94=82         =E2=94=82                      =E2=
=94=82 NTB          =E2=94=82
> =E2=94=82 NetDev     =E2=94=82         =E2=94=82                      =E2=
=94=82 NetDev       =E2=94=82
> =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=82   =
                   =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=A4
> =E2=94=82 NTB        =E2=94=82         =E2=94=82                      =E2=
=94=82 NTB          =E2=94=82
> =E2=94=82 Transfer   =E2=94=82         =E2=94=82                      =E2=
=94=82 Transfer     =E2=94=82
> =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=82   =
                   =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=A4
> =E2=94=82            =E2=94=82         =E2=94=82                      =E2=
=94=82              =E2=94=82
> =E2=94=82  PCI NTB   =E2=94=82         =E2=94=82                      =E2=
=94=82              =E2=94=82
> =E2=94=82    EPF     =E2=94=82         =E2=94=82                      =E2=
=94=82              =E2=94=82
> =E2=94=82   Driver   =E2=94=82         =E2=94=82                      =E2=
=94=82 PCI Virtual  =E2=94=82
> =E2=94=82            =E2=94=82         =E2=94=9C=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90      =E2=94=82 NTB Driver   =
=E2=94=82
> =E2=94=82            =E2=94=82         =E2=94=82 PCI EP NTB    =E2=94=82=
=E2=97=84=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=96=BA=E2=94=82            =
  =E2=94=82
> =E2=94=82            =E2=94=82         =E2=94=82  FN Driver    =E2=94=82 =
     =E2=94=82              =E2=94=82
> =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=9C=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4      =E2=
=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4
> =E2=94=82            =E2=94=82         =E2=94=82               =E2=94=82 =
     =E2=94=82              =E2=94=82
> =E2=94=82  PCI Bus   =E2=94=82 =E2=97=84=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=96=BA =E2=94=82  PCI EP Bus   =E2=94=82      =E2=94=82  Vir=
tual PCI =E2=94=82
> =E2=94=82            =E2=94=82  PCI    =E2=94=82               =E2=94=82 =
     =E2=94=82     Bus      =E2=94=82
> =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98         =E2=94=94=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
> PCIe Root Port                        PCI EP
>
> This driver includes 3 parts:
>  1 PCI EP NTB function driver
>  2 Virtual PCI bus
>  3 PCI virtual NTB driver, which is loaded only by above virtual PCI bus
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---

Update ntb mail list.

> Change from v1:
>  - Fix code style problem according to Bjorn's feedback
>  - Remove hardcode VPCI_BUS_NUM, let user choose free number by configfs
>  - Remove hardcode vid pid for virtual pci ntb driver, change by
>    configfs
>
>  drivers/pci/endpoint/functions/Kconfig        |   11 +
>  drivers/pci/endpoint/functions/Makefile       |    1 +
>  drivers/pci/endpoint/functions/pci-epf-vntb.c | 1424 +++++++++++++++++
>  3 files changed, 1436 insertions(+)
>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-vntb.c
>
> diff --git a/drivers/pci/endpoint/functions/Kconfig b/drivers/pci/endpoin=
t/functions/Kconfig
> index 5f1242ca2f4e4..65217428d17b9 100644
> --- a/drivers/pci/endpoint/functions/Kconfig
> +++ b/drivers/pci/endpoint/functions/Kconfig
> @@ -25,3 +25,14 @@ config PCI_EPF_NTB
>           device tree.
>
>           If in doubt, say "N" to disable Endpoint NTB driver.
> +
> +config PCI_EPF_VNTB
> +        tristate "PCI Endpoint NTB driver"
> +        depends on PCI_ENDPOINT
> +        select CONFIGFS_FS
> +        help
> +          Select this configuration option to enable the Non-Transparent
> +          Bridge (NTB) driver for PCIe Endpoint. NTB driver implements N=
TB
> +          between PCI Root Port and PCIe Endpoint.
> +
> +          If in doubt, say "N" to disable Endpoint NTB driver.
> diff --git a/drivers/pci/endpoint/functions/Makefile b/drivers/pci/endpoi=
nt/functions/Makefile
> index 96ab932a537a2..5c13001deaba1 100644
> --- a/drivers/pci/endpoint/functions/Makefile
> +++ b/drivers/pci/endpoint/functions/Makefile
> @@ -5,3 +5,4 @@
>
>  obj-$(CONFIG_PCI_EPF_TEST)             +=3D pci-epf-test.o
>  obj-$(CONFIG_PCI_EPF_NTB)              +=3D pci-epf-ntb.o
> +obj-$(CONFIG_PCI_EPF_VNTB)             +=3D pci-epf-vntb.o
> diff --git a/drivers/pci/endpoint/functions/pci-epf-vntb.c b/drivers/pci/=
endpoint/functions/pci-epf-vntb.c
> new file mode 100644
> index 0000000000000..1466dd1904175
> --- /dev/null
> +++ b/drivers/pci/endpoint/functions/pci-epf-vntb.c
> @@ -0,0 +1,1424 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Endpoint Function Driver to implement Non-Transparent Bridge function=
ality
> + * Between PCI RC and EP
> + *
> + * Copyright (C) 2020 Texas Instruments
> + * Copyright (C) 2022 NXP
> + *
> + * Based on pci-epf-ntb.c
> + * Author: Frank Li <Frank.Li@nxp.com>
> + * Author: Kishon Vijay Abraham I <kishon@ti.com>
> + */
> +
> +/**
> + * +------------+         +---------------------------------------+
> + * |            |         |                                       |
> + * +------------+         |                        +--------------+
> + * | NTB        |         |                        | NTB          |
> + * | NetDev     |         |                        | NetDev       |
> + * +------------+         |                        +--------------+
> + * | NTB        |         |                        | NTB          |
> + * | Transfer   |         |                        | Transfer     |
> + * +------------+         |                        +--------------+
> + * |            |         |                        |              |
> + * |  PCI NTB   |         |                        |              |
> + * |    EPF     |         |                        |              |
> + * |   Driver   |         |                        | PCI Virtual  |
> + * |            |         +---------------+        | NTB Driver   |
> + * |            |         | PCI EP NTB    |<------>|              |
> + * |            |         |  FN Driver    |        |              |
> + * +------------+         +---------------+        +--------------+
> + * |            |         |               |        |              |
> + * |  PCI Bus   | <-----> |  PCI EP Bus   |        |  Virtual PCI |
> + * |            |  PCI    |               |        |     Bus      |
> + * +------------+         +---------------+--------+--------------+
> + * PCIe Root Port                        PCI EP
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/slab.h>
> +
> +#include <linux/pci-epc.h>
> +#include <linux/pci-epf.h>
> +#include <linux/ntb.h>
> +
> +static struct workqueue_struct *kpcintb_workqueue;
> +
> +#define COMMAND_CONFIGURE_DOORBELL     1
> +#define COMMAND_TEARDOWN_DOORBELL      2
> +#define COMMAND_CONFIGURE_MW           3
> +#define COMMAND_TEARDOWN_MW            4
> +#define COMMAND_LINK_UP                        5
> +#define COMMAND_LINK_DOWN              6
> +
> +#define COMMAND_STATUS_OK              1
> +#define COMMAND_STATUS_ERROR           2
> +
> +#define LINK_STATUS_UP                 BIT(0)
> +
> +#define SPAD_COUNT                     64
> +#define DB_COUNT                       4
> +#define NTB_MW_OFFSET                  2
> +#define DB_COUNT_MASK                  GENMASK(15, 0)
> +#define MSIX_ENABLE                    BIT(16)
> +#define MAX_DB_COUNT                   32
> +#define MAX_MW                         4
> +
> +enum epf_ntb_bar {
> +       BAR_CONFIG,
> +       BAR_DB,
> +       BAR_MW0,
> +       BAR_MW1,
> +       BAR_MW2,
> +};
> +
> +/*
> + * +--------------------------------------------------+ Base
> + * |                                                  |
> + * |                                                  |
> + * |                                                  |
> + * |          Common Control Register                 |
> + * |                                                  |
> + * |                                                  |
> + * |                                                  |
> + * +-----------------------+--------------------------+ Base+span_offset
> + * |                       |                          |
> + * |    Peer Span Space    |    Span Space            |
> + * |                       |                          |
> + * |                       |                          |
> + * +-----------------------+--------------------------+ Base+span_offset
> + * |                       |                          |     +span_count =
* 4
> + * |                       |                          |
> + * |     Span Space        |   Peer Span Space        |
> + * |                       |                          |
> + * +-----------------------+--------------------------+
> + *       Virtual PCI             PCIe Endpoint
> + *       NTB Driver               NTB Driver
> + */
> +struct epf_ntb_ctrl {
> +       u32     command;
> +       u32     argument;
> +       u16     command_status;
> +       u16     link_status;
> +       u32     topology;
> +       u64     addr;
> +       u64     size;
> +       u32     num_mws;
> +       u32     reserved;
> +       u32     spad_offset;
> +       u32     spad_count;
> +       u32     db_entry_size;
> +       u32     db_data[MAX_DB_COUNT];
> +       u32     db_offset[MAX_DB_COUNT];
> +} __packed;
> +
> +struct epf_ntb {
> +       struct ntb_dev ntb;
> +       struct pci_epf *epf;
> +       struct config_group group;
> +
> +       u32 num_mws;
> +       u32 db_count;
> +       u32 spad_count;
> +       u64 mws_size[MAX_MW];
> +       u64 db;
> +       u32 vbus_number;
> +       u16 vntb_pid;
> +       u16 vntb_vid;
> +
> +       bool linkup;
> +       u32 spad_size;
> +
> +       enum pci_barno epf_ntb_bar[6];
> +
> +       struct epf_ntb_ctrl *reg;
> +
> +       phys_addr_t epf_db_phy;
> +       void __iomem *epf_db;
> +
> +       phys_addr_t vpci_mw_phy[MAX_MW];
> +       void __iomem *vpci_mw_addr[MAX_MW];
> +
> +       struct delayed_work cmd_handler;
> +};
> +
> +#define to_epf_ntb(epf_group) container_of((epf_group), struct epf_ntb, =
group)
> +#define ntb_ndev(__ntb) container_of(__ntb, struct epf_ntb, ntb)
> +
> +static struct pci_epf_header epf_ntb_header =3D {
> +       .vendorid       =3D PCI_ANY_ID,
> +       .deviceid       =3D PCI_ANY_ID,
> +       .baseclass_code =3D PCI_BASE_CLASS_MEMORY,
> +       .interrupt_pin  =3D PCI_INTERRUPT_INTA,
> +};
> +
> +/**
> + * epf_ntb_link_up() - Raise link_up interrupt to Virtual Host
> + * @ntb: NTB device that facilitates communication between HOST and VHOS=
T
> + * @link_up: true or false indicating Link is UP or Down
> + *
> + * Once NTB function in HOST invoke ntb_link_enable(),
> + * this NTB function driver will trigger a link event to vhost.
> + */
> +static int epf_ntb_link_up(struct epf_ntb *ntb, bool link_up)
> +{
> +       if (link_up)
> +               ntb->reg->link_status |=3D LINK_STATUS_UP;
> +       else
> +               ntb->reg->link_status &=3D ~LINK_STATUS_UP;
> +
> +       ntb_link_event(&ntb->ntb);
> +       return 0;
> +}
> +
> +/**
> + * epf_ntb_configure_mw() - Configure the Outbound Address Space for vho=
st
> + *   to access the memory window of host
> + * @ntb: NTB device that facilitates communication between host and vhos=
t
> + * @mw: Index of the memory window (either 0, 1, 2 or 3)
> + *
> + *                          EP Outbound Window
> + * +--------+              +-----------+
> + * |        |              |           |
> + * |        |              |           |
> + * |        |              |           |
> + * |        |              |           |
> + * |        |              +-----------+
> + * | Virtual|              | Memory Win|
> + * | NTB    | -----------> |           |
> + * | Driver |              |           |
> + * |        |              +-----------+
> + * |        |              |           |
> + * |        |              |           |
> + * +--------+              +-----------+
> + *  VHost                   PCI EP
> + */
> +static int epf_ntb_configure_mw(struct epf_ntb *ntb, u32 mw)
> +{
> +       phys_addr_t phys_addr;
> +       u8 func_no, vfunc_no;
> +       u64 addr, size;
> +       int ret =3D 0;
> +
> +       phys_addr =3D ntb->vpci_mw_phy[mw];
> +       addr =3D ntb->reg->addr;
> +       size =3D ntb->reg->size;
> +
> +       func_no =3D ntb->epf->func_no;
> +       vfunc_no =3D ntb->epf->vfunc_no;
> +
> +       ret =3D pci_epc_map_addr(ntb->epf->epc, func_no, vfunc_no, phys_a=
ddr, addr, size);
> +       if (ret)
> +               dev_err(&ntb->epf->epc->dev,
> +                       "Failed to map memory window %d address\n", mw);
> +       return ret;
> +}
> +
> +/**
> + * epf_ntb_teardown_mw() - Teardown the configured OB ATU
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T
> + * @mw: Index of the memory window (either 0, 1, 2 or 3)
> + *
> + * Teardown the configured OB ATU configured in epf_ntb_configure_mw() u=
sing
> + * pci_epc_unmap_addr()
> + */
> +static void epf_ntb_teardown_mw(struct epf_ntb *ntb, u32 mw)
> +{
> +       pci_epc_unmap_addr(ntb->epf->epc,
> +                          ntb->epf->func_no,
> +                          ntb->epf->vfunc_no,
> +                          ntb->vpci_mw_phy[mw]);
> +}
> +
> +/**
> + * epf_ntb_cmd_handler() - Handle commands provided by the NTB Host
> + * @work: work_struct for the epf_ntb_epc
> + *
> + * Workqueue function that gets invoked for the two epf_ntb_epc
> + * periodically (once every 5ms) to see if it has received any commands
> + * from NTB host. The host can send commands to configure doorbell or
> + * configure memory window or to update link status.
> + */
> +static void epf_ntb_cmd_handler(struct work_struct *work)
> +{
> +       struct epf_ntb_ctrl *ctrl;
> +       u32 command, argument;
> +       struct epf_ntb *ntb;
> +       struct device *dev;
> +       int ret;
> +       int i;
> +
> +       ntb =3D container_of(work, struct epf_ntb, cmd_handler.work);
> +
> +       for (i =3D 1; i < ntb->db_count; i++) {
> +               if (readl(ntb->epf_db + i * 4)) {
> +                       if (readl(ntb->epf_db + i * 4))
> +                               ntb->db |=3D 1 << (i - 1);
> +
> +                       ntb_db_event(&ntb->ntb, i);
> +                       writel(0, ntb->epf_db + i * 4);
> +               }
> +       }
> +
> +       ctrl =3D ntb->reg;
> +       command =3D ctrl->command;
> +       if (!command)
> +               goto reset_handler;
> +       argument =3D ctrl->argument;
> +
> +       ctrl->command =3D 0;
> +       ctrl->argument =3D 0;
> +
> +       ctrl =3D ntb->reg;
> +       dev =3D &ntb->epf->dev;
> +
> +       switch (command) {
> +       case COMMAND_CONFIGURE_DOORBELL:
> +               ctrl->command_status =3D COMMAND_STATUS_OK;
> +               break;
> +       case COMMAND_TEARDOWN_DOORBELL:
> +               ctrl->command_status =3D COMMAND_STATUS_OK;
> +               break;
> +       case COMMAND_CONFIGURE_MW:
> +               ret =3D epf_ntb_configure_mw(ntb, argument);
> +               if (ret < 0)
> +                       ctrl->command_status =3D COMMAND_STATUS_ERROR;
> +               else
> +                       ctrl->command_status =3D COMMAND_STATUS_OK;
> +               break;
> +       case COMMAND_TEARDOWN_MW:
> +               epf_ntb_teardown_mw(ntb, argument);
> +               ctrl->command_status =3D COMMAND_STATUS_OK;
> +               break;
> +       case COMMAND_LINK_UP:
> +               ntb->linkup =3D true;
> +               ret =3D epf_ntb_link_up(ntb, true);
> +               if (ret < 0)
> +                       ctrl->command_status =3D COMMAND_STATUS_ERROR;
> +               else
> +                       ctrl->command_status =3D COMMAND_STATUS_OK;
> +               goto reset_handler;
> +       case COMMAND_LINK_DOWN:
> +               ntb->linkup =3D false;
> +               ret =3D epf_ntb_link_up(ntb, false);
> +               if (ret < 0)
> +                       ctrl->command_status =3D COMMAND_STATUS_ERROR;
> +               else
> +                       ctrl->command_status =3D COMMAND_STATUS_OK;
> +               break;
> +       default:
> +               dev_err(dev, "UNKNOWN command: %d\n", command);
> +               break;
> +       }
> +
> +reset_handler:
> +       queue_delayed_work(kpcintb_workqueue, &ntb->cmd_handler,
> +                          msecs_to_jiffies(5));
> +}
> +
> +/**
> + * epf_ntb_config_sspad_bar_clear() - Clear Config + Self scratchpad BAR
> + * @ntb_epc: EPC associated with one of the HOST which holds peer's outb=
ound
> + *          address.
> + *
> + * Clear BAR0 of EP CONTROLLER 1 which contains the HOST1's config and
> + * self scratchpad region (removes inbound ATU configuration). While BAR=
0 is
> + * the default self scratchpad BAR, an NTB could have other BARs for sel=
f
> + * scratchpad (because of reserved BARs). This function can get the exac=
t BAR
> + * used for self scratchpad from epf_ntb_bar[BAR_CONFIG].
> + *
> + * Please note the self scratchpad region and config region is combined =
to
> + * a single region and mapped using the same BAR. Also note HOST2's peer
> + * scratchpad is HOST1's self scratchpad.
> + */
> +static void epf_ntb_config_sspad_bar_clear(struct epf_ntb *ntb)
> +{
> +       struct pci_epf_bar *epf_bar;
> +       enum pci_barno barno;
> +
> +       barno =3D ntb->epf_ntb_bar[BAR_CONFIG];
> +       epf_bar =3D &ntb->epf->bar[barno];
> +
> +       pci_epc_clear_bar(ntb->epf->epc, ntb->epf->func_no, ntb->epf->vfu=
nc_no, epf_bar);
> +}
> +
> +/**
> + * epf_ntb_config_sspad_bar_set() - Set Config + Self scratchpad BAR
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T
> + *
> + * Map BAR0 of EP CONTROLLER 1 which contains the HOST1's config and
> + * self scratchpad region.
> + *
> + * Please note the self scratchpad region and config region is combined =
to
> + * a single region and mapped using the same BAR.
> + */
> +static int epf_ntb_config_sspad_bar_set(struct epf_ntb *ntb)
> +{
> +       struct pci_epf_bar *epf_bar;
> +       enum pci_barno barno;
> +       u8 func_no, vfunc_no;
> +       struct device *dev;
> +       int ret;
> +
> +       dev =3D &ntb->epf->dev;
> +       func_no =3D ntb->epf->func_no;
> +       vfunc_no =3D ntb->epf->vfunc_no;
> +       barno =3D ntb->epf_ntb_bar[BAR_CONFIG];
> +       epf_bar =3D &ntb->epf->bar[barno];
> +
> +       ret =3D pci_epc_set_bar(ntb->epf->epc, func_no, vfunc_no, epf_bar=
);
> +       if (ret) {
> +               dev_err(dev, "inft: Config/Status/SPAD BAR set failed\n")=
;
> +               return ret;
> +       }
> +       return 0;
> +}
> +
> +/**
> + * epf_ntb_config_spad_bar_free() - Free the physical memory associated =
with
> + *   config + scratchpad region
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T
> + */
> +static void epf_ntb_config_spad_bar_free(struct epf_ntb *ntb)
> +{
> +       enum pci_barno barno;
> +
> +       barno =3D ntb->epf_ntb_bar[BAR_CONFIG];
> +       pci_epf_free_space(ntb->epf, ntb->reg, barno, 0);
> +}
> +
> +/**
> + * epf_ntb_config_spad_bar_alloc() - Allocate memory for config + scratc=
hpad
> + *   region
> + * @ntb: NTB device that facilitates communication between HOST1 and HOS=
T2
> + *
> + * Allocate the Local Memory mentioned in the above diagram. The size of
> + * CONFIG REGION is sizeof(struct epf_ntb_ctrl) and size of SCRATCHPAD R=
EGION
> + * is obtained from "spad-count" configfs entry.
> + */
> +static int epf_ntb_config_spad_bar_alloc(struct epf_ntb *ntb)
> +{
> +       size_t align;
> +       enum pci_barno barno;
> +       struct epf_ntb_ctrl *ctrl;
> +       u32 spad_size, ctrl_size;
> +       u64 size;
> +       struct pci_epf *epf =3D ntb->epf;
> +       struct device *dev =3D &epf->dev;
> +       u32 spad_count;
> +       void *base;
> +       int i;
> +       const struct pci_epc_features *epc_features =3D pci_epc_get_featu=
res(epf->epc,
> +                                                               epf->func=
_no,
> +                                                               epf->vfun=
c_no);
> +       barno =3D ntb->epf_ntb_bar[BAR_CONFIG];
> +       size =3D epc_features->bar_fixed_size[barno];
> +       align =3D epc_features->align;
> +
> +       if ((!IS_ALIGNED(size, align)))
> +               return -EINVAL;
> +
> +       spad_count =3D ntb->spad_count;
> +
> +       ctrl_size =3D sizeof(struct epf_ntb_ctrl);
> +       spad_size =3D 2 * spad_count * 4;
> +
> +       if (!align) {
> +               ctrl_size =3D roundup_pow_of_two(ctrl_size);
> +               spad_size =3D roundup_pow_of_two(spad_size);
> +       } else {
> +               ctrl_size =3D ALIGN(ctrl_size, align);
> +               spad_size =3D ALIGN(spad_size, align);
> +       }
> +
> +       if (!size)
> +               size =3D ctrl_size + spad_size;
> +       else if (size < ctrl_size + spad_size)
> +               return -EINVAL;
> +
> +       base =3D pci_epf_alloc_space(epf, size, barno, align, 0);
> +       if (!base) {
> +               dev_err(dev, "Config/Status/SPAD alloc region fail\n");
> +               return -ENOMEM;
> +       }
> +
> +       ntb->reg =3D base;
> +
> +       ctrl =3D ntb->reg;
> +       ctrl->spad_offset =3D ctrl_size;
> +
> +       ctrl->spad_count =3D spad_count;
> +       ctrl->num_mws =3D ntb->num_mws;
> +       ntb->spad_size =3D spad_size;
> +
> +       ctrl->db_entry_size =3D 4;
> +
> +       for (i =3D 0; i < ntb->db_count; i++) {
> +               ntb->reg->db_data[i] =3D 1 + i;
> +               ntb->reg->db_offset[i] =3D 0;
> +       }
> +
> +       return 0;
> +}
> +
> +/**
> + * epf_ntb_configure_interrupt() - Configure MSI/MSI-X capaiblity
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T
> + *
> + * Configure MSI/MSI-X capability for each interface with number of
> + * interrupts equal to "db_count" configfs entry.
> + */
> +static int epf_ntb_configure_interrupt(struct epf_ntb *ntb)
> +{
> +       const struct pci_epc_features *epc_features;
> +       struct device *dev;
> +       u32 db_count;
> +       int ret;
> +
> +       dev =3D &ntb->epf->dev;
> +
> +       epc_features =3D pci_epc_get_features(ntb->epf->epc, ntb->epf->fu=
nc_no, ntb->epf->vfunc_no);
> +
> +       if (!(epc_features->msix_capable || epc_features->msi_capable)) {
> +               dev_err(dev, "MSI or MSI-X is required for doorbell\n");
> +               return -EINVAL;
> +       }
> +
> +       db_count =3D ntb->db_count;
> +       if (db_count > MAX_DB_COUNT) {
> +               dev_err(dev, "DB count cannot be more than %d\n", MAX_DB_=
COUNT);
> +               return -EINVAL;
> +       }
> +
> +       ntb->db_count =3D db_count;
> +
> +       if (epc_features->msi_capable) {
> +               ret =3D pci_epc_set_msi(ntb->epf->epc,
> +                                     ntb->epf->func_no,
> +                                     ntb->epf->vfunc_no,
> +                                     16);
> +               if (ret) {
> +                       dev_err(dev, "MSI configuration failed\n");
> +                       return ret;
> +               }
> +       }
> +
> +       return 0;
> +}
> +
> +/**
> + * epf_ntb_db_bar_init() - Configure Doorbell window BARs
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T
> + */
> +static int epf_ntb_db_bar_init(struct epf_ntb *ntb)
> +{
> +       const struct pci_epc_features *epc_features;
> +       u32 align;
> +       struct device *dev =3D &ntb->epf->dev;
> +       int ret;
> +       struct pci_epf_bar *epf_bar;
> +       void __iomem *mw_addr;
> +       enum pci_barno barno;
> +       size_t size =3D 4 * ntb->db_count;
> +
> +       epc_features =3D pci_epc_get_features(ntb->epf->epc,
> +                                           ntb->epf->func_no,
> +                                           ntb->epf->vfunc_no);
> +       align =3D epc_features->align;
> +
> +       if (size < 128)
> +               size =3D 128;
> +
> +       if (align)
> +               size =3D ALIGN(size, align);
> +       else
> +               size =3D roundup_pow_of_two(size);
> +
> +       barno =3D ntb->epf_ntb_bar[BAR_DB];
> +
> +       mw_addr =3D pci_epf_alloc_space(ntb->epf, size, barno, align, 0);
> +       if (!mw_addr) {
> +               dev_err(dev, "Failed to allocate OB address\n");
> +               return -ENOMEM;
> +       }
> +
> +       ntb->epf_db =3D mw_addr;
> +
> +       epf_bar =3D &ntb->epf->bar[barno];
> +
> +       ret =3D pci_epc_set_bar(ntb->epf->epc, ntb->epf->func_no, ntb->ep=
f->vfunc_no, epf_bar);
> +       if (ret) {
> +               dev_err(dev, "Doorbell BAR set failed\n");
> +                       goto err_alloc_peer_mem;
> +       }
> +       return ret;
> +
> +err_alloc_peer_mem:
> +       pci_epc_mem_free_addr(ntb->epf->epc, epf_bar->phys_addr, mw_addr,=
 epf_bar->size);
> +       return -1;
> +}
> +
> +/**
> + * epf_ntb_db_bar_clear() - Clear doorbell BAR and free memory
> + *   allocated in peer's outbound address space
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T
> + */
> +static void epf_ntb_db_bar_clear(struct epf_ntb *ntb)
> +{
> +       enum pci_barno barno;
> +
> +       barno =3D ntb->epf_ntb_bar[BAR_DB];
> +       pci_epf_free_space(ntb->epf, ntb->epf_db, barno, 0);
> +       pci_epc_clear_bar(ntb->epf->epc,
> +                         ntb->epf->func_no,
> +                         ntb->epf->vfunc_no,
> +                         &ntb->epf->bar[barno]);
> +}
> +
> +/**
> + * epf_ntb_mw_bar_init() - Configure Memory window BARs
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T
> + *
> + */
> +static int epf_ntb_mw_bar_init(struct epf_ntb *ntb)
> +{
> +       int ret =3D 0;
> +       int i;
> +       u64 size;
> +       enum pci_barno barno;
> +       struct device *dev =3D &ntb->epf->dev;
> +
> +       for (i =3D 0; i < ntb->num_mws; i++) {
> +               size =3D ntb->mws_size[i];
> +               barno =3D ntb->epf_ntb_bar[BAR_MW0 + i];
> +
> +               ntb->epf->bar[barno].barno =3D barno;
> +               ntb->epf->bar[barno].size =3D size;
> +               ntb->epf->bar[barno].addr =3D 0;
> +               ntb->epf->bar[barno].phys_addr =3D 0;
> +               ntb->epf->bar[barno].flags |=3D upper_32_bits(size) ?
> +                               PCI_BASE_ADDRESS_MEM_TYPE_64 :
> +                               PCI_BASE_ADDRESS_MEM_TYPE_32;
> +
> +               ret =3D pci_epc_set_bar(ntb->epf->epc,
> +                                     ntb->epf->func_no,
> +                                     ntb->epf->vfunc_no,
> +                                     &ntb->epf->bar[barno]);
> +               if (ret) {
> +                       dev_err(dev, "MW set failed\n");
> +                       goto err_alloc_mem;
> +               }
> +
> +               /* Allocate EPC outbound memory windows to vpci vntb devi=
ce */
> +               ntb->vpci_mw_addr[i] =3D pci_epc_mem_alloc_addr(ntb->epf-=
>epc,
> +                                                             &ntb->vpci_=
mw_phy[i],
> +                                                             size);
> +               if (!ntb->vpci_mw_addr[i]) {
> +                       dev_err(dev, "Failed to allocate source address\n=
");
> +                       goto err_alloc_mem;
> +               }
> +       }
> +
> +       return ret;
> +err_alloc_mem:
> +       return ret;
> +}
> +
> +/**
> + * epf_ntb_mw_bar_clear() - Clear Memory window BARs
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T
> + */
> +static void epf_ntb_mw_bar_clear(struct epf_ntb *ntb)
> +{
> +       enum pci_barno barno;
> +       int i;
> +
> +       for (i =3D 0; i < ntb->num_mws; i++) {
> +               barno =3D ntb->epf_ntb_bar[BAR_MW0 + i];
> +               pci_epc_clear_bar(ntb->epf->epc,
> +                                 ntb->epf->func_no,
> +                                 ntb->epf->vfunc_no,
> +                                 &ntb->epf->bar[barno]);
> +
> +               pci_epc_mem_free_addr(ntb->epf->epc,
> +                                     ntb->vpci_mw_phy[i],
> +                                     ntb->vpci_mw_addr[i],
> +                                     ntb->mws_size[i]);
> +       }
> +}
> +
> +/**
> + * epf_ntb_epc_destroy() - Cleanup NTB EPC interface
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T
> + *
> + * Wrapper for epf_ntb_epc_destroy_interface() to cleanup all the NTB in=
terfaces
> + */
> +static void epf_ntb_epc_destroy(struct epf_ntb *ntb)
> +{
> +       pci_epc_remove_epf(ntb->epf->epc, ntb->epf, 0);
> +       pci_epc_put(ntb->epf->epc);
> +}
> +
> +/**
> + * epf_ntb_init_epc_bar() - Identify BARs to be used for each of the NTB
> + * constructs (scratchpad region, doorbell, memorywindow)
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T
> + */
> +static int epf_ntb_init_epc_bar(struct epf_ntb *ntb)
> +{
> +       const struct pci_epc_features *epc_features;
> +       enum pci_barno barno;
> +       enum epf_ntb_bar bar;
> +       struct device *dev;
> +       u32 num_mws;
> +       int i;
> +
> +       barno =3D BAR_0;
> +       num_mws =3D ntb->num_mws;
> +       dev =3D &ntb->epf->dev;
> +       epc_features =3D pci_epc_get_features(ntb->epf->epc, ntb->epf->fu=
nc_no, ntb->epf->vfunc_no);
> +
> +       /* These are required BARs which are mandatory for NTB functional=
ity */
> +       for (bar =3D BAR_CONFIG; bar <=3D BAR_MW0; bar++, barno++) {
> +               barno =3D pci_epc_get_next_free_bar(epc_features, barno);
> +               if (barno < 0) {
> +                       dev_err(dev, "Fail to get NTB function BAR\n");
> +                       return barno;
> +               }
> +               ntb->epf_ntb_bar[bar] =3D barno;
> +       }
> +
> +       /* These are optional BARs which don't impact NTB functionality *=
/
> +       for (bar =3D BAR_MW1, i =3D 1; i < num_mws; bar++, barno++, i++) =
{
> +               barno =3D pci_epc_get_next_free_bar(epc_features, barno);
> +               if (barno < 0) {
> +                       ntb->num_mws =3D i;
> +                       dev_dbg(dev, "BAR not available for > MW%d\n", i =
+ 1);
> +               }
> +               ntb->epf_ntb_bar[bar] =3D barno;
> +       }
> +
> +       return 0;
> +}
> +
> +/**
> + * epf_ntb_epc_init() - Initialize NTB interface
> + * @ntb: NTB device that facilitates communication between HOST and vHOS=
T2
> + *
> + * Wrapper to initialize a particular EPC interface and start the workqu=
eue
> + * to check for commands from host. This function will write to the
> + * EP controller HW for configuring it.
> + */
> +static int epf_ntb_epc_init(struct epf_ntb *ntb)
> +{
> +       u8 func_no, vfunc_no;
> +       struct pci_epc *epc;
> +       struct pci_epf *epf;
> +       struct device *dev;
> +       int ret;
> +
> +       epf =3D ntb->epf;
> +       dev =3D &epf->dev;
> +       epc =3D epf->epc;
> +       func_no =3D ntb->epf->func_no;
> +       vfunc_no =3D ntb->epf->vfunc_no;
> +
> +       ret =3D epf_ntb_config_sspad_bar_set(ntb);
> +       if (ret) {
> +               dev_err(dev, "Config/self SPAD BAR init failed");
> +               return ret;
> +       }
> +
> +       ret =3D epf_ntb_configure_interrupt(ntb);
> +       if (ret) {
> +               dev_err(dev, "Interrupt configuration failed\n");
> +               goto err_config_interrupt;
> +       }
> +
> +       ret =3D epf_ntb_db_bar_init(ntb);
> +       if (ret) {
> +               dev_err(dev, "DB BAR init failed\n");
> +               goto err_db_bar_init;
> +       }
> +
> +       ret =3D epf_ntb_mw_bar_init(ntb);
> +       if (ret) {
> +               dev_err(dev, "MW BAR init failed\n");
> +               goto err_mw_bar_init;
> +       }
> +
> +       if (vfunc_no <=3D 1) {
> +               ret =3D pci_epc_write_header(epc, func_no, vfunc_no, epf-=
>header);
> +               if (ret) {
> +                       dev_err(dev, "Configuration header write failed\n=
");
> +                       goto err_write_header;
> +               }
> +       }
> +
> +       INIT_DELAYED_WORK(&ntb->cmd_handler, epf_ntb_cmd_handler);
> +       queue_work(kpcintb_workqueue, &ntb->cmd_handler.work);
> +
> +       return 0;
> +
> +err_write_header:
> +       epf_ntb_mw_bar_clear(ntb);
> +err_mw_bar_init:
> +       epf_ntb_db_bar_clear(ntb);
> +err_db_bar_init:
> +err_config_interrupt:
> +       epf_ntb_config_sspad_bar_clear(ntb);
> +
> +       return ret;
> +}
> +
> +
> +/**
> + * epf_ntb_epc_cleanup() - Cleanup all NTB interfaces
> + * @ntb: NTB device that facilitates communication between HOST1 and HOS=
T2
> + *
> + * Wrapper to cleanup all NTB interfaces.
> + */
> +static void epf_ntb_epc_cleanup(struct epf_ntb *ntb)
> +{
> +       epf_ntb_db_bar_clear(ntb);
> +       epf_ntb_mw_bar_clear(ntb);
> +}
> +
> +#define EPF_NTB_R(_name)                                               \
> +static ssize_t epf_ntb_##_name##_show(struct config_item *item,         =
       \
> +                                     char *page)                       \
> +{                                                                      \
> +       struct config_group *group =3D to_config_group(item);            =
 \
> +       struct epf_ntb *ntb =3D to_epf_ntb(group);                       =
 \
> +                                                                       \
> +       return sprintf(page, "%d\n", ntb->_name);                       \
> +}
> +
> +#define EPF_NTB_W(_name)                                               \
> +static ssize_t epf_ntb_##_name##_store(struct config_item *item,       \
> +                                      const char *page, size_t len)    \
> +{                                                                      \
> +       struct config_group *group =3D to_config_group(item);            =
 \
> +       struct epf_ntb *ntb =3D to_epf_ntb(group);                       =
 \
> +       u32 val;                                                        \
> +       int ret;                                                        \
> +                                                                       \
> +       ret =3D kstrtou32(page, 0, &val);                                =
 \
> +       if (ret)                                                        \
> +               return ret;                                             \
> +                                                                       \
> +       ntb->_name =3D val;                                              =
 \
> +                                                                       \
> +       return len;                                                     \
> +}
> +
> +#define EPF_NTB_MW_R(_name)                                            \
> +static ssize_t epf_ntb_##_name##_show(struct config_item *item,         =
       \
> +                                     char *page)                       \
> +{                                                                      \
> +       struct config_group *group =3D to_config_group(item);            =
 \
> +       struct epf_ntb *ntb =3D to_epf_ntb(group);                       =
 \
> +       int win_no;                                                     \
> +                                                                       \
> +       sscanf(#_name, "mw%d", &win_no);                                \
> +                                                                       \
> +       return sprintf(page, "%lld\n", ntb->mws_size[win_no - 1]);      \
> +}
> +
> +#define EPF_NTB_MW_W(_name)                                            \
> +static ssize_t epf_ntb_##_name##_store(struct config_item *item,       \
> +                                      const char *page, size_t len)    \
> +{                                                                      \
> +       struct config_group *group =3D to_config_group(item);            =
 \
> +       struct epf_ntb *ntb =3D to_epf_ntb(group);                       =
 \
> +       struct device *dev =3D &ntb->epf->dev;                           =
 \
> +       int win_no;                                                     \
> +       u64 val;                                                        \
> +       int ret;                                                        \
> +                                                                       \
> +       ret =3D kstrtou64(page, 0, &val);                                =
 \
> +       if (ret)                                                        \
> +               return ret;                                             \
> +                                                                       \
> +       if (sscanf(#_name, "mw%d", &win_no) !=3D 1)                      =
 \
> +               return -EINVAL;                                         \
> +                                                                       \
> +       if (ntb->num_mws < win_no) {                                    \
> +               dev_err(dev, "Invalid num_nws: %d value\n", ntb->num_mws)=
; \
> +               return -EINVAL;                                         \
> +       }                                                               \
> +                                                                       \
> +       ntb->mws_size[win_no - 1] =3D val;                               =
 \
> +                                                                       \
> +       return len;                                                     \
> +}
> +
> +static ssize_t epf_ntb_num_mws_store(struct config_item *item,
> +                                    const char *page, size_t len)
> +{
> +       struct config_group *group =3D to_config_group(item);
> +       struct epf_ntb *ntb =3D to_epf_ntb(group);
> +       u32 val;
> +       int ret;
> +
> +       ret =3D kstrtou32(page, 0, &val);
> +       if (ret)
> +               return ret;
> +
> +       if (val > MAX_MW)
> +               return -EINVAL;
> +
> +       ntb->num_mws =3D val;
> +
> +       return len;
> +}
> +
> +EPF_NTB_R(spad_count)
> +EPF_NTB_W(spad_count)
> +EPF_NTB_R(db_count)
> +EPF_NTB_W(db_count)
> +EPF_NTB_R(num_mws)
> +EPF_NTB_R(vbus_number)
> +EPF_NTB_W(vbus_number)
> +EPF_NTB_R(vntb_pid)
> +EPF_NTB_W(vntb_pid)
> +EPF_NTB_R(vntb_vid)
> +EPF_NTB_W(vntb_vid)
> +EPF_NTB_MW_R(mw1)
> +EPF_NTB_MW_W(mw1)
> +EPF_NTB_MW_R(mw2)
> +EPF_NTB_MW_W(mw2)
> +EPF_NTB_MW_R(mw3)
> +EPF_NTB_MW_W(mw3)
> +EPF_NTB_MW_R(mw4)
> +EPF_NTB_MW_W(mw4)
> +
> +CONFIGFS_ATTR(epf_ntb_, spad_count);
> +CONFIGFS_ATTR(epf_ntb_, db_count);
> +CONFIGFS_ATTR(epf_ntb_, num_mws);
> +CONFIGFS_ATTR(epf_ntb_, mw1);
> +CONFIGFS_ATTR(epf_ntb_, mw2);
> +CONFIGFS_ATTR(epf_ntb_, mw3);
> +CONFIGFS_ATTR(epf_ntb_, mw4);
> +CONFIGFS_ATTR(epf_ntb_, vbus_number);
> +CONFIGFS_ATTR(epf_ntb_, vntb_pid);
> +CONFIGFS_ATTR(epf_ntb_, vntb_vid);
> +
> +static struct configfs_attribute *epf_ntb_attrs[] =3D {
> +       &epf_ntb_attr_spad_count,
> +       &epf_ntb_attr_db_count,
> +       &epf_ntb_attr_num_mws,
> +       &epf_ntb_attr_mw1,
> +       &epf_ntb_attr_mw2,
> +       &epf_ntb_attr_mw3,
> +       &epf_ntb_attr_mw4,
> +       &epf_ntb_attr_vbus_number,
> +       &epf_ntb_attr_vntb_pid,
> +       &epf_ntb_attr_vntb_vid,
> +       NULL,
> +};
> +
> +static const struct config_item_type ntb_group_type =3D {
> +       .ct_attrs       =3D epf_ntb_attrs,
> +       .ct_owner       =3D THIS_MODULE,
> +};
> +
> +/**
> + * epf_ntb_add_cfs() - Add configfs directory specific to NTB
> + * @epf: NTB endpoint function device
> + * @group: A pointer to the config_group structure referencing a group o=
f
> + *        config_items of a specific type that belong to a specific sub-=
system.
> + *
> + * Add configfs directory specific to NTB. This directory will hold
> + * NTB specific properties like db_count, spad_count, num_mws etc.,
> + */
> +static struct config_group *epf_ntb_add_cfs(struct pci_epf *epf,
> +                                           struct config_group *group)
> +{
> +       struct epf_ntb *ntb =3D epf_get_drvdata(epf);
> +       struct config_group *ntb_group =3D &ntb->group;
> +       struct device *dev =3D &epf->dev;
> +
> +       config_group_init_type_name(ntb_group, dev_name(dev), &ntb_group_=
type);
> +
> +       return ntb_group;
> +}
> +
> +/*=3D=3D=3D=3D virtual PCI bus driver, which only load virtual NTB PCI d=
river =3D=3D=3D=3D*/
> +
> +static u32 pci_space[] =3D {
> +       0xffffffff,     /*DeviceID, Vendor ID*/
> +       0,              /*Status, Command*/
> +       0xffffffff,     /*Class code, subclass, prog if, revision id*/
> +       0x40,           /*bist, header type, latency Timer, cache line si=
ze*/
> +       0,              /*BAR 0*/
> +       0,              /*BAR 1*/
> +       0,              /*BAR 2*/
> +       0,              /*BAR 3*/
> +       0,              /*BAR 4*/
> +       0,              /*BAR 5*/
> +       0,              /*Cardbus cis point*/
> +       0,              /*Subsystem ID Subystem vendor id*/
> +       0,              /*ROM Base Address*/
> +       0,              /*Reserved, Cap. Point*/
> +       0,              /*Reserved,*/
> +       0,              /*Max Lat, Min Gnt, interrupt pin, interrupt line=
*/
> +};
> +
> +int pci_read(struct pci_bus *bus, unsigned int devfn, int where, int siz=
e, u32 *val)
> +{
> +       if (devfn =3D=3D 0) {
> +               memcpy(val, ((u8 *)pci_space) + where, size);
> +               return PCIBIOS_SUCCESSFUL;
> +       }
> +       return PCIBIOS_DEVICE_NOT_FOUND;
> +}
> +
> +int pci_write(struct pci_bus *bus, unsigned int devfn, int where, int si=
ze, u32 val)
> +{
> +       return 0;
> +}
> +
> +struct pci_ops vpci_ops =3D {
> +       .read =3D pci_read,
> +       .write =3D pci_write,
> +};
> +
> +static int vpci_scan_bus(void *sysdata)
> +{
> +       struct pci_bus *vpci_bus;
> +       struct epf_ntb *ndev =3D sysdata;
> +
> +       vpci_bus =3D pci_scan_bus(ndev->vbus_number, &vpci_ops, sysdata);
> +       if (vpci_bus)
> +               pr_err("create pci bus\n");
> +
> +       pci_bus_add_devices(vpci_bus);
> +
> +       return 0;
> +}
> +
> +/*=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Virtual P=
CIe NTB driver =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D*/
> +
> +static int vntb_epf_mw_count(struct ntb_dev *ntb, int pidx)
> +{
> +       struct epf_ntb *ndev =3D ntb_ndev(ntb);
> +
> +       return ndev->num_mws;
> +}
> +
> +static int vntb_epf_spad_count(struct ntb_dev *ntb)
> +{
> +       return ntb_ndev(ntb)->spad_count;
> +}
> +
> +static int vntb_epf_peer_mw_count(struct ntb_dev *ntb)
> +{
> +       return ntb_ndev(ntb)->num_mws;
> +}
> +
> +static u64 vntb_epf_db_valid_mask(struct ntb_dev *ntb)
> +{
> +       return BIT_ULL(ntb_ndev(ntb)->db_count) - 1;
> +}
> +
> +static int vntb_epf_db_set_mask(struct ntb_dev *ntb, u64 db_bits)
> +{
> +       return 0;
> +}
> +
> +static int vntb_epf_mw_set_trans(struct ntb_dev *ndev, int pidx, int idx=
,
> +               dma_addr_t addr, resource_size_t size)
> +{
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +       struct pci_epf_bar *epf_bar;
> +       enum pci_barno barno;
> +       int ret;
> +       struct device *dev;
> +
> +       dev =3D &ntb->ntb.dev;
> +       barno =3D ntb->epf_ntb_bar[BAR_MW0 + idx];
> +       epf_bar =3D &ntb->epf->bar[barno];
> +       epf_bar->phys_addr =3D addr;
> +       epf_bar->barno =3D barno;
> +       epf_bar->size =3D size;
> +
> +       ret =3D pci_epc_set_bar(ntb->epf->epc, 0, 0, epf_bar);
> +       if (ret) {
> +               dev_err(dev, "failure set mw trans\n");
> +               return ret;
> +       }
> +       return 0;
> +}
> +
> +static int vntb_epf_mw_clear_trans(struct ntb_dev *ntb, int pidx, int id=
x)
> +{
> +       return 0;
> +}
> +
> +static int vntb_epf_peer_mw_get_addr(struct ntb_dev *ndev, int idx,
> +                               phys_addr_t *base, resource_size_t *size)
> +{
> +
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +
> +       if (base)
> +               *base =3D ntb->vpci_mw_phy[idx];
> +
> +       if (size)
> +               *size =3D ntb->mws_size[idx];
> +
> +       return 0;
> +}
> +
> +static int vntb_epf_link_enable(struct ntb_dev *ntb,
> +                       enum ntb_speed max_speed,
> +                       enum ntb_width max_width)
> +{
> +       return 0;
> +}
> +
> +static u32 vntb_epf_spad_read(struct ntb_dev *ndev, int idx)
> +{
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +       int off =3D ntb->reg->spad_offset, ct =3D ntb->reg->spad_count * =
4;
> +       u32 val;
> +       void __iomem *base =3D ntb->reg;
> +
> +       val =3D readl(base + off + ct + idx * 4);
> +       return val;
> +}
> +
> +static int vntb_epf_spad_write(struct ntb_dev *ndev, int idx, u32 val)
> +{
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +       struct epf_ntb_ctrl *ctrl =3D ntb->reg;
> +       int off =3D ctrl->spad_offset, ct =3D ctrl->spad_count * 4;
> +       void __iomem *base =3D ntb->reg;
> +
> +       writel(val, base + off + ct + idx * 4);
> +       return 0;
> +}
> +
> +static u32 vntb_epf_peer_spad_read(struct ntb_dev *ndev, int pidx, int i=
dx)
> +{
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +       struct epf_ntb_ctrl *ctrl =3D ntb->reg;
> +       int off =3D ctrl->spad_offset;
> +       void __iomem *base =3D ntb->reg;
> +       u32 val;
> +
> +       val =3D readl(base + off + idx * 4);
> +       return val;
> +}
> +
> +static int vntb_epf_peer_spad_write(struct ntb_dev *ndev, int pidx, int =
idx, u32 val)
> +{
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +       struct epf_ntb_ctrl *ctrl =3D ntb->reg;
> +       int off =3D ctrl->spad_offset;
> +       void __iomem *base =3D ntb->reg;
> +
> +       writel(val, base + off + idx * 4);
> +       return 0;
> +}
> +
> +static int vntb_epf_peer_db_set(struct ntb_dev *ndev, u64 db_bits)
> +{
> +       u32 interrupt_num =3D ffs(db_bits) + 1;
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +       u8 func_no, vfunc_no;
> +       int ret;
> +
> +       func_no =3D ntb->epf->func_no;
> +       vfunc_no =3D ntb->epf->vfunc_no;
> +
> +       ret =3D pci_epc_raise_irq(ntb->epf->epc,
> +                               func_no,
> +                               vfunc_no,
> +                               PCI_EPC_IRQ_MSI,
> +                               interrupt_num + 1);
> +       if (ret)
> +               dev_err(&ntb->ntb.dev, "Failed to raise IRQ\n");
> +
> +       return ret;
> +}
> +
> +static u64 vntb_epf_db_read(struct ntb_dev *ndev)
> +{
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +
> +       return ntb->db;
> +}
> +
> +static int vntb_epf_mw_get_align(struct ntb_dev *ndev, int pidx, int idx=
,
> +                       resource_size_t *addr_align,
> +                       resource_size_t *size_align,
> +                       resource_size_t *size_max)
> +{
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +
> +       if (addr_align)
> +               *addr_align =3D SZ_4K;
> +
> +       if (size_align)
> +               *size_align =3D 1;
> +
> +       if (size_max)
> +               *size_max =3D ntb->mws_size[idx];
> +
> +       return 0;
> +}
> +
> +static u64 vntb_epf_link_is_up(struct ntb_dev *ndev,
> +                       enum ntb_speed *speed,
> +                       enum ntb_width *width)
> +{
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +
> +       return ntb->reg->link_status;
> +}
> +
> +static int vntb_epf_db_clear_mask(struct ntb_dev *ndev, u64 db_bits)
> +{
> +       return 0;
> +}
> +
> +static int vntb_epf_db_clear(struct ntb_dev *ndev, u64 db_bits)
> +{
> +       struct epf_ntb *ntb =3D ntb_ndev(ndev);
> +
> +       ntb->db &=3D ~db_bits;
> +       return 0;
> +}
> +
> +static int vntb_epf_link_disable(struct ntb_dev *ntb)
> +{
> +       return 0;
> +}
> +
> +static const struct ntb_dev_ops vntb_epf_ops =3D {
> +       .mw_count               =3D vntb_epf_mw_count,
> +       .spad_count             =3D vntb_epf_spad_count,
> +       .peer_mw_count          =3D vntb_epf_peer_mw_count,
> +       .db_valid_mask          =3D vntb_epf_db_valid_mask,
> +       .db_set_mask            =3D vntb_epf_db_set_mask,
> +       .mw_set_trans           =3D vntb_epf_mw_set_trans,
> +       .mw_clear_trans         =3D vntb_epf_mw_clear_trans,
> +       .peer_mw_get_addr       =3D vntb_epf_peer_mw_get_addr,
> +       .link_enable            =3D vntb_epf_link_enable,
> +       .spad_read              =3D vntb_epf_spad_read,
> +       .spad_write             =3D vntb_epf_spad_write,
> +       .peer_spad_read         =3D vntb_epf_peer_spad_read,
> +       .peer_spad_write        =3D vntb_epf_peer_spad_write,
> +       .peer_db_set            =3D vntb_epf_peer_db_set,
> +       .db_read                =3D vntb_epf_db_read,
> +       .mw_get_align           =3D vntb_epf_mw_get_align,
> +       .link_is_up             =3D vntb_epf_link_is_up,
> +       .db_clear_mask          =3D vntb_epf_db_clear_mask,
> +       .db_clear               =3D vntb_epf_db_clear,
> +       .link_disable           =3D vntb_epf_link_disable,
> +};
> +
> +static int pci_vntb_probe(struct pci_dev *pdev, const struct pci_device_=
id *id)
> +{
> +       int ret;
> +       struct epf_ntb *ndev =3D (struct epf_ntb *)pdev->sysdata;
> +       struct device *dev =3D &pdev->dev;
> +
> +       ndev->ntb.pdev =3D pdev;
> +       ndev->ntb.topo =3D NTB_TOPO_NONE;
> +       ndev->ntb.ops =3D  &vntb_epf_ops;
> +
> +       ret =3D dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
> +       if (ret) {
> +               dev_err(dev, "Cannot set DMA mask\n");
> +               return -EINVAL;
> +       }
> +
> +       ret =3D ntb_register_device(&ndev->ntb);
> +       if (ret) {
> +               dev_err(dev, "Failed to register NTB device\n");
> +               goto err_register_dev;
> +       }
> +
> +       dev_dbg(dev, "PCI Virtual NTB driver loaded\n");
> +       return 0;
> +
> +err_register_dev:
> +       return -EINVAL;
> +}
> +
> +static struct pci_device_id pci_vntb_table[] =3D {
> +       {
> +               PCI_DEVICE(0xffff, 0xffff),
> +       },
> +       {},
> +};
> +
> +static struct pci_driver vntb_pci_driver =3D {
> +       .name           =3D "pci-vntb",
> +       .id_table       =3D pci_vntb_table,
> +       .probe          =3D pci_vntb_probe,
> +};
> +
> +/* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D PCIe EPF Driver Bind =3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D*/
> +
> +/**
> + * epf_ntb_bind() - Initialize endpoint controller to provide NTB functi=
onality
> + * @epf: NTB endpoint function device
> + *
> + * Initialize both the endpoint controllers associated with NTB function=
 device.
> + * Invoked when a primary interface or secondary interface is bound to E=
PC
> + * device. This function will succeed only when EPC is bound to both the
> + * interfaces.
> + */
> +static int epf_ntb_bind(struct pci_epf *epf)
> +{
> +       struct epf_ntb *ntb =3D epf_get_drvdata(epf);
> +       struct device *dev =3D &epf->dev;
> +       int ret;
> +
> +       if (!epf->epc) {
> +               dev_dbg(dev, "PRIMARY EPC interface not yet bound\n");
> +               return 0;
> +       }
> +
> +       ret =3D epf_ntb_init_epc_bar(ntb);
> +       if (ret) {
> +               dev_err(dev, "Failed to create NTB EPC\n");
> +               goto err_bar_init;
> +       }
> +
> +       ret =3D epf_ntb_config_spad_bar_alloc(ntb);
> +       if (ret) {
> +               dev_err(dev, "Failed to allocate BAR memory\n");
> +               goto err_bar_alloc;
> +       }
> +
> +       ret =3D epf_ntb_epc_init(ntb);
> +       if (ret) {
> +               dev_err(dev, "Failed to initialize EPC\n");
> +               goto err_bar_alloc;
> +       }
> +
> +       epf_set_drvdata(epf, ntb);
> +
> +       pci_space[0] =3D (ntb->vntb_pid << 16) | ntb->vntb_vid;
> +       pci_vntb_table[0].vendor =3D ntb->vntb_vid;
> +       pci_vntb_table[0].device =3D ntb->vntb_pid;
> +
> +       if (pci_register_driver(&vntb_pci_driver)) {
> +               dev_err(dev, "failure register vntb pci driver\n");
> +               goto err_bar_alloc;
> +       }
> +
> +       vpci_scan_bus(ntb);
> +
> +       return 0;
> +
> +err_bar_alloc:
> +       epf_ntb_config_spad_bar_free(ntb);
> +
> +err_bar_init:
> +       epf_ntb_epc_destroy(ntb);
> +
> +       return ret;
> +}
> +
> +/**
> + * epf_ntb_unbind() - Cleanup the initialization from epf_ntb_bind()
> + * @epf: NTB endpoint function device
> + *
> + * Cleanup the initialization from epf_ntb_bind()
> + */
> +static void epf_ntb_unbind(struct pci_epf *epf)
> +{
> +       struct epf_ntb *ntb =3D epf_get_drvdata(epf);
> +
> +       epf_ntb_epc_cleanup(ntb);
> +       epf_ntb_config_spad_bar_free(ntb);
> +       epf_ntb_epc_destroy(ntb);
> +
> +       pci_unregister_driver(&vntb_pci_driver);
> +}
> +
> +// EPF driver probe
> +static struct pci_epf_ops epf_ntb_ops =3D {
> +       .bind   =3D epf_ntb_bind,
> +       .unbind =3D epf_ntb_unbind,
> +       .add_cfs =3D epf_ntb_add_cfs,
> +};
> +
> +/**
> + * epf_ntb_probe() - Probe NTB function driver
> + * @epf: NTB endpoint function device
> + *
> + * Probe NTB function driver when endpoint function bus detects a NTB
> + * endpoint function.
> + */
> +static int epf_ntb_probe(struct pci_epf *epf)
> +{
> +       struct epf_ntb *ntb;
> +       struct device *dev;
> +
> +       dev =3D &epf->dev;
> +
> +       ntb =3D devm_kzalloc(dev, sizeof(*ntb), GFP_KERNEL);
> +       if (!ntb)
> +               return -ENOMEM;
> +
> +       epf->header =3D &epf_ntb_header;
> +       ntb->epf =3D epf;
> +       ntb->vbus_number =3D 0xff;
> +       epf_set_drvdata(epf, ntb);
> +
> +       dev_info(dev, "pci-ep epf driver loaded\n");
> +       return 0;
> +}
> +
> +static const struct pci_epf_device_id epf_ntb_ids[] =3D {
> +       {
> +               .name =3D "pci_epf_vntb",
> +       },
> +       {},
> +};
> +
> +static struct pci_epf_driver epf_ntb_driver =3D {
> +       .driver.name    =3D "pci_epf_vntb",
> +       .probe          =3D epf_ntb_probe,
> +       .id_table       =3D epf_ntb_ids,
> +       .ops            =3D &epf_ntb_ops,
> +       .owner          =3D THIS_MODULE,
> +};
> +
> +static int __init epf_ntb_init(void)
> +{
> +       int ret;
> +
> +       kpcintb_workqueue =3D alloc_workqueue("kpcintb", WQ_MEM_RECLAIM |
> +                                           WQ_HIGHPRI, 0);
> +       ret =3D pci_epf_register_driver(&epf_ntb_driver);
> +       if (ret) {
> +               destroy_workqueue(kpcintb_workqueue);
> +               pr_err("Failed to register pci epf ntb driver --> %d\n", =
ret);
> +               return ret;
> +       }
> +
> +       return 0;
> +}
> +module_init(epf_ntb_init);
> +
> +static void __exit epf_ntb_exit(void)
> +{
> +       pci_epf_unregister_driver(&epf_ntb_driver);
> +       destroy_workqueue(kpcintb_workqueue);
> +}
> +module_exit(epf_ntb_exit);
> +
> +MODULE_DESCRIPTION("PCI EPF NTB DRIVER");
> +MODULE_AUTHOR("Frank Li <Frank.li@nxp.com>");
> +MODULE_LICENSE("GPL v2");
> --
> 2.24.0.rc1
>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAHrpEqRVKKHosaf32QPXKEFEY2yeACNoJ-ohoAixBehNO%3Du3pQ%40mail.gmai=
l.com.
