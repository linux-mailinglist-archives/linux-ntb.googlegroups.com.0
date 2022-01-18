Return-Path: <linux-ntb+bncBDAMN6NI5EERBENJTWHQMGQEDHSKAEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 182C9493181
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Jan 2022 01:00:18 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id 7-20020ac24827000000b0042e731a7bc7sf297582lft.18
        for <lists+linux-ntb@lfdr.de>; Tue, 18 Jan 2022 16:00:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1642550417; cv=pass;
        d=google.com; s=arc-20160816;
        b=WGBxjKAQVvVfv9alq1CNdjj/+lFOCao5BkU6vkgPgc4uy4F3xpx+iNlIUB9JsAvHQv
         DwmFcEQ5DJv9XMaKQo2l4mx1Qwgvm2pDBqc39pxdMXIWPNVUGYXlJYebvIOHomb5LVDo
         tvqcFZgh5sqva1UML3jAjv3/RC5/mywAuKARPFM8MWVWuvbPOgvkWSSKuKvc4Tw2ED1P
         Qirpndn0amf+cAKtPcS0GIdHLG1EALb8gDJ6582lYg9mt2eQBky4CYyB14u2W4qyEH0d
         nNZNEzsbMUMBD88h8c0GT3iErzHCZiwXeYZIMUVCNEkOx5MFFv6rLmxnI8BNnUszlWxJ
         gcUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=lnNXGQKLkXaJ+gQCkJJLe7iR9lrUAHsxZfSmrA58j3Y=;
        b=09EUadBIluCAux+uzkSnanq+b0eySwEFbyzze7MLLUS1ijcJieVkWF8qhp+bYFHTg4
         ovFa5cGKv7l/q8NtA7KibxKMmx49Mo0np6UImIdjcIXf3X5mBFs7tlsxWRdK+kIBgSxT
         y819R420wDONqDI/uIhyV5o3/pjg/00DwTrCinFuIUBSG8AxgViDlpz5eyXsOBGpKQ+p
         3ghy+e/y5suhaZ+21272kfHvCTCsF83EBMJmeD+OASf2RimvTdTSpnTkrWtAzqzokev8
         tvPJx2FjH+PxmGllbN+Ufxmpasgbjf/UDyLIu5dD2V3hYQzRtycCUfiJ+q5OwiRssor0
         KWOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=a9MMj8Qk;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=m3IN+KU7;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lnNXGQKLkXaJ+gQCkJJLe7iR9lrUAHsxZfSmrA58j3Y=;
        b=GJBECuFw5Ps1XZ1jokNokAmiIFiiAa3ldtGRsXzXiRQKCKUpnFDS3DTLYEt8R+0V75
         DG+DhvQL3RSiFV2GOCSIyftBRt3db+vSf6AxAdk76MUXDIRVKZmnMf1MPhti7KXqXLcE
         AKgBZcn27iWssO93R99LdE4swzdy6D3hOwb1YiQzUiN1Sk+bB2/HGhkxkhNR0UuR52mc
         sDtHlWXjsY0egAgEyVPsSRoI4NoWXEk/ZgVhjFaKrosirVtK1nMnfIO3c6CdQJ9rlSxZ
         nMlNDHyRW+XgSlc01q8bN+oaa8l5zBx9gJw3V0bJt891OxSgS0gGAPGuhzpKhYlg7+l4
         48SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lnNXGQKLkXaJ+gQCkJJLe7iR9lrUAHsxZfSmrA58j3Y=;
        b=Cw7rVmXC2v7tOVSQRshkMHUm2Y/aeC6cm+NpU3lkbUXwr/Vc9Q+Pva9YQtQmYls8y3
         bF7gS0dKp21EycAfPHXdKDT0aYXyUHwLJ+fG7YXCKdh4PjwZh0t49dF/omx3c7++vx84
         thTjAAf8rpQJZo8qWNi97y+/NkTcthICLVFXHio9atzoUWhlJOBRk9df49mmM4VBc6rZ
         sDNuN/o5+OwnsgZEuX3ojCY6XLtXhmP7oIk2XLnQzjwMmezF61mvKzHFAWArxdriE3CY
         JbkCDGlU5hEbN9C92SEqtpJ44Ci2ldtxWJjywEyQsQx8Ulz+Rt5CHPzXyl54a5dpvSTz
         FJkw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531pf7nfiEcG64JrOTU8ia6lbePo8DqtYa4enje66scPfYSO1gPS
	53UXtwCb791NC8GrX1Z3GN0=
X-Google-Smtp-Source: ABdhPJwCVm3h/woO51C7gJCay4i+qqEE5nF0j9KWftk+hyldssN44E2PGykWGzXs+djnn2YOwYREWQ==
X-Received: by 2002:a2e:9654:: with SMTP id z20mr18190262ljh.526.1642550417402;
        Tue, 18 Jan 2022 16:00:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls54912ljp.1.gmail; Tue, 18
 Jan 2022 16:00:16 -0800 (PST)
X-Received: by 2002:a2e:b7ca:: with SMTP id p10mr12365652ljo.455.1642550416294;
        Tue, 18 Jan 2022 16:00:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1642550416; cv=none;
        d=google.com; s=arc-20160816;
        b=s3UhNq/9ixQU5xUvYLkufmr2MFXTOOzdMIyIoS/T5ffrJanM9FFslhFhV8IzI5dnNR
         lDDb56rQ96wSvllCj4VqnNzqTDF8IHBxdTsQTr/aJpfB0ldGeuHN5EKSKbHwcT+bLS7y
         6u4QP/7v59y1+9ex0bIjJKtfX579FwY06zTQcrM6tfT51/inhzXwXmK8SxQrTWjT7Rbw
         Rl/g0O+/06YTb4Wv46/VO8ENEz2PCHhh58fcIJ0ItYLY5GM/yI/bh8sg/UIqS8NrFu6H
         qOin0wO+ler100i1TZGeQitTTp0ctruOugzFlBcLPvgNZd8Jp7LTRh7K9KQaW+3Oq5xz
         tLng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=GJoRNYCC0qaPQvmOXkM+nCsiL5/VV0xKtAJ9Mq0RcS0=;
        b=fmDxQaepkx1Yx118tNjhFG1uWgmshYfFYFxarmI4UxQVg4Q6cJVRvggSaVGRFeyTDF
         C2a42ddyt61NBiQOSo7WGVLXfUSACqHXtPtAvMPVPPRPO7rtyB//JcTjrhNbLawjJbeB
         3zT+eQ5Tg8VBGzPEodsgo5Jb9utWhz2JopTurdDyOpTlKJ2zj3ZxaBZk2FkBroxzZ/lx
         poEKlPxpVxlVAF1l4iBPDx5UbSgZi8QaUB/BONmYLsu8Vs2H64vK4ppAj0RIw2FcFUyh
         tlt0S4t2LRTMur0fMhXJYKchLYB5IZ1cDyYb/hZiNP+5Pcfbfrt1wkdxAnM4Thm8htIr
         hGpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=a9MMj8Qk;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=m3IN+KU7;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id m13si290672lji.2.2022.01.18.16.00.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jan 2022 16:00:16 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, LKML
 <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex
 Williamson <alex.williamson@redhat.com>, Kevin Tian
 <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>, Megha Dey
 <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
 xen-devel@lists.xenproject.org, Juergen Gross <jgross@suse.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Niklas Schnelle
 <schnelle@linux.ibm.com>, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, Logan
 Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: Re: [patch] genirq/msi: Populate sysfs entry only once
In-Reply-To: <1d5711be-c26d-d57b-10db-1b45d279515d@socionext.com>
References: <20211206210600.123171746@linutronix.de>
 <20211206210749.224917330@linutronix.de> <87leznqx2a.ffs@tglx>
 <1d5711be-c26d-d57b-10db-1b45d279515d@socionext.com>
Date: Wed, 19 Jan 2022 00:59:58 +0100
Message-ID: <87a6fsa935.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=a9MMj8Qk;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=m3IN+KU7;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Kunihiko,

On Wed, Jan 12 2022 at 09:05, Kunihiko Hayashi wrote:
> Is this fix the same as below?
> https://marc.info/?l=linux-kernel&m=164061119923119&w=2

pretty much the same, but I missed that patch. I was off for 2+ weeks
and on return Boris poked me about this issue and I fixed it. Then I
went ahead and marked all vacation mail read as I always do :)

So sorry for not noticing that patch.

Thanks,

        Thomas

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87a6fsa935.ffs%40tglx.
