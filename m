Return-Path: <linux-ntb+bncBDAMN6NI5EERB5EKRKGQMGQECEE3ZYY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id D08DE460118
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 20:22:28 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id v1-20020aa7cd41000000b003e80973378asf10367323edw.14
        for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 11:22:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638040948; cv=pass;
        d=google.com; s=arc-20160816;
        b=N7wp1sHzgL6anR8llNaey1Wx/REfU7MxGykvxqyzdCCAQZ+5EtaSHSBZV2p8QO1buZ
         Ce2HC3gBswh2Whuyt68mjxKZg1701pDiz2JXOG9wJCvTZY4jbPZuLTjju4DHe94AgV7U
         wa5DKAwx5HD/mT8L3NYekZpzzrYzHtK3pJyQECC/0Z8WUYW1nIxgimoVJ0MFuG+my1rC
         oAz3upGA6PZriyb5CeNiSevh3QjClqauQEfYHtTvmtvwycc9Ow5L7bDP/qtZcfGtuB+r
         O0+dpl9A4nHVlTeEfG74TtNt7SIg2VfTds0D2knfDqjyQjhhHu1DMhAB+ncKeD4H3gOZ
         PqFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=4dyWsf7WR35tA0LjEzma644syB4doI6GkTbPwg0z2Uk=;
        b=XM5ny8uI0s3WRYx3a7xl2wy3CyOomqYsyWeLhhw9jFXGgtvqMiibOOiiG8vgJa5rSj
         /eRdJHn8D1gNEK0ed6dhi0Zg0lb3jEft5GrB9zGkBs7MP+L/IN3BRRiV+3WoY/7fBaWZ
         Q6Y8pn36P+t4R6U30n2Eq0EUc6PEKBIUIZBiy9qqS0OqlJ3e/Xxn8TDhfbyq44teJFsq
         9nmJIJnP2rxCZ2usCO4dTvbEc6slbzTr8b+MClXvHuZJgzHCqA/v9goNQYc8DLcTrCXT
         UQecJH5bzjsYz2B71lQhmX0eOPl8uf5fTcS2fM/axoP7uYXivfmJSrOUmrnUE5SBfP+w
         wGZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=E1FJbCvW;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=YbWaCIQ1;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4dyWsf7WR35tA0LjEzma644syB4doI6GkTbPwg0z2Uk=;
        b=CYCbLWrPIBtqZZhOd17o/b//bTNJTxFI73ChpWsPJnfdskKMAnlcHOaes/5KYWLH/1
         FsXjDvg2Advb+/xXo0pe3QdD52XN22hbv6jZsQ19nv0c689cYJdWwbPWyYmslrLON47+
         NaPmtRIHcmPbEbCjgNjluITlS4TaD8R4HfvpR/AE6yv4+y2EdkgK/OIt3Nq/1JNBGSDo
         AZTqeLdKK96umScLpBkMUp8LmOMSy/UkW/n8Cl5E6uj7bSgMYnPJ800GYAEo/aRZnFbo
         Pegh4P+H34LEk9cMIyWqPK76CSycVeyNnvsc4f7G1cbgaVcP1c7XY/Rg14vfXczhEzLR
         4GLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4dyWsf7WR35tA0LjEzma644syB4doI6GkTbPwg0z2Uk=;
        b=AmvpjboFfecJtnpAdDMhlNUIGckx1YFeZpK11dXBgW8xGMtYs+nrMzgxvIMH34bTAg
         oQ2Z0XXNSCEf+X8vptaroqtK/YnfWx3hXxK+rhsN5GAowgiXkULpRoIZpANohUlZaGre
         Sr83ccSM7ekd9tTbPyIsaedKw/VcXjTbeRpu36ME3AjYLuHfXkiRczAZD8vdTbMF9RJV
         YBYSmf0BTfrz6nej+UvUjU97xDVO/JjZ3b9ul3mN9VfMrV/S6L53G4oAL8b1AoVRdys3
         HA/NvCY9t56MBoGUFk8VO44EIc/yPHGJ69b6VJngo/qybtD6Ck5PD1ifOYWeGKEDknlm
         pizg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532dyLjSffTN5uTu9WMuVNitXKxQ5iNXSNyzzySOG50alJ9Ydha6
	yaBvR2xu4m1hVb3VLcrD6hY=
X-Google-Smtp-Source: ABdhPJy/Tj0sCuGdnmKHfW9/a/sBx126ZrdhRXGI0G38LC/nKcHHRwA/6Kdk7FB07XIjj/veXPK9gw==
X-Received: by 2002:a50:d88a:: with SMTP id p10mr57872357edj.274.1638040948636;
        Sat, 27 Nov 2021 11:22:28 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:907:960d:: with SMTP id gb13ls568772ejc.11.gmail; Sat,
 27 Nov 2021 11:22:27 -0800 (PST)
X-Received: by 2002:a17:907:c0c:: with SMTP id ga12mr49782379ejc.417.1638040947754;
        Sat, 27 Nov 2021 11:22:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638040947; cv=none;
        d=google.com; s=arc-20160816;
        b=geUBK4ol+KO4XhaGxgqheu25sKYUIOW5/KhX0tiHGJniv6wcw4WqYHjUaLIc6WfEav
         63dsYP8C9UmxkVVJm4JcRcp0nEEBswTVS+GGIzOhpRIB6+p+gAd+/V8hEYjwP2p0XcXR
         WrYmcsQsIZ7jTQ1c7NfezqS+q8db4zETyH8pbcC8hfT/FNZ0egRI8MQyWFxrbvNweMgQ
         1m6sHcry2t5n260pgtc7hdz41YTy0xo2oiXIdABpex5E1zI2nzzPsY0PLZ7iVP6N9M+Q
         NgO7tefXpNK8ELI/fp3lZxK0VGHH1bYVGjI701v5IpgXx6ph+D2gvc+n/lcH0W4/2Lca
         pFnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=B1qxQCFfbrdFSxQkL8hZX6Zfer69wbZc+107UOQS45k=;
        b=UgqybqrcK75ThUHpJsFP9Cei2tkOYiz2ic5p7B//oBE4TqZtM9vEyGEqfmP0A/g/8w
         8QFRF9c6AGe084A7NGT4wmdM+jtLv2ytJsTmNzlb57r4Q2daXYGwAUBbDYY7sNzsiJEo
         h0NcRuNo4a9W/2eKOmuriDgkCumu1q4OfVvA3R5m+zgUOlwisfu6UD9k+ysNymeW3ayI
         ao6frKB2qSXO/wsE5viOcvGbk9/w+NxZd/slIjP+45WP4k/fZ2NnT36Ml/Skr8zt/gTt
         GUbUm+6fg7zRukP2ScrlsC35BIKMmSjT6qvMAMHGCl9pyEIkhpojj/u200t5J6NboROA
         2qRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=E1FJbCvW;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=YbWaCIQ1;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id d5si755001ede.2.2021.11.27.11.22.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Nov 2021 11:22:27 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>, Jason
 Gunthorpe <jgg@nvidia.com>, Megha Dey <megha.dey@intel.com>, Ashok Raj
 <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>, Jon Mason <jdmason@kudzu.us>, Dave
 Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: Re: [patch 07/32] genirq/msi: Count the allocated MSI descriptors
In-Reply-To: <YaIiPISLr7VokL8P@kroah.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232734.708730446@linutronix.de> <YaIiPISLr7VokL8P@kroah.com>
Date: Sat, 27 Nov 2021 20:22:26 +0100
Message-ID: <87o865flot.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=E1FJbCvW;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=YbWaCIQ1;
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

On Sat, Nov 27 2021 at 13:19, Greg Kroah-Hartman wrote:
> On Sat, Nov 27, 2021 at 02:22:38AM +0100, Thomas Gleixner wrote:
>> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
>
> No changelog?

Bah. This one should not be there at all.

> Anyway, why do we care about the number of decriptors?
>> +/**
>> + * msi_device_num_descs - Query the number of allocated MSI descriptors of a device
>> + * @dev:	The device to read from
>> + *
>> + * Note: This is a lockless snapshot of msi_device_data::num_descs
>> + *
>> + * Returns the number of MSI descriptors which are allocated for @dev
>> + */
>> +unsigned int msi_device_num_descs(struct device *dev)
>> +{
>> +	if (dev->msi.data)
>> +		return dev->msi.data->num_descs;
>
> As this number can change after it is read, what will callers do with
> it?

I wanted to get rid of this, but then forgot. Getting old.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87o865flot.ffs%40tglx.
