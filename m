Return-Path: <linux-ntb+bncBDRJHDHGTMIRB4XZT6CQMGQEM3I5BDI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id A840138CD83
	for <lists+linux-ntb@lfdr.de>; Fri, 21 May 2021 20:33:23 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id j19-20020ac85f930000b029021f033edf60sf1026303qta.10
        for <lists+linux-ntb@lfdr.de>; Fri, 21 May 2021 11:33:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621622002; cv=pass;
        d=google.com; s=arc-20160816;
        b=OiLtUb91QxVOfhHrSPA/M5p0VMPTyKq/47eRtZt1xIbe4mFuMk9S/QgyEL0skyP5J9
         7ys7lxX/AGOdYvVMZrvvsq4n0SWEwW44oL1dHfZDvxd6ODgpiRnhxcfe2g2ac1/I7EcJ
         gUFGeo/4pOt3gQPpWAlXJYotGMsgACH+EHcxZbb9C5ABqRAzsZ+8GzBlTT+lCNM+Iudv
         Qpp91MPZmUCiqMBPFpi3bYhy4I3U534bpmm2O7KNnyjp9GUxJdpChbhFJ0qP1qcobHx8
         m98gnrxa97AQv1X3uNfEydSlvZwOSROl71ABKsofJskuswV0vLT3xzxjKa1PKtVRM0Rr
         7xjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=jjQOAAJj5f5iyGUJR8q74K5dBbbPlgWwLRa2Qkahpb4=;
        b=HGyU5wFAVLA6AFuItB8+mUyY4fZZY8HxEchLIHRYukZiBmiTq1Oe+QcakEVYRLSI9a
         x5vHhDZIwRwVgHIV5X71T9vtWXhrQxKQ/Aft2B7quJt+W7x9uXBFTukiWUJX8na9ksia
         43p7tWJ1v6/aqFuADUx41BfRftlSvyLq+Xc43o9MRegYd58JTyL6RuL6YjHe45EEREXa
         +igzdSw/UavlJ0VH0qrlr242pKbUUvOv6fKMwZJpET2nMQdyt1AfvoJm8jJ6FAVYrAdp
         bXqCcsjNfTUK+x8LNQ3D8kP3TMmrlwCpxFA2HiSaNmb0GAllfwyCJtJ2fYwxygklsMjC
         LfPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ixsystems.com header.s=google header.b=jjXVE+Xl;
       spf=pass (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=jkirsher@ixsystems.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ixsystems.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jjQOAAJj5f5iyGUJR8q74K5dBbbPlgWwLRa2Qkahpb4=;
        b=F/6EmhizDH+/VA2Xd6TyhPN3euyNrM0g+dmOHbPhWWu3gttue5KD3RA1DmCgJuAeZy
         F5x2/WNvMfRu4MpXX4TvRTSAKpJzcwJaF+Ry0FPovhBgsoeZEiLdUDPoCbDid3jsNUtd
         arMm+qUHSHwgLh+hXUmqaIfD/ojtfvWNwPsvGc9rTLFKrzHVplPAD9rWtBQpAwmktgQ8
         WkqdhPiqDo6DBUgsGDN4S5SurP8DAvUAqzLs2X8GmMAW0/C1FgFv3E294zxIptsZ2Oef
         vsagyLJ6fbxJK+p89C0S4BAyUNw5GKZxOqZ00Xa3LoJnALBo6EMzXzY1qV7yntpbOht8
         3K9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jjQOAAJj5f5iyGUJR8q74K5dBbbPlgWwLRa2Qkahpb4=;
        b=WaIQdycZAkqt6zeskzQFmqHQv+x50c9FwC2WHZxshVBrD7dvhtWPNL6mF3Y/zpfPk6
         KWeQ5nxVOIE3Qwx7TQ8X5Ar+OtFIV3TxbRRLHuz36kspMrHS3mWHNMlX8SeUI5HP0wA+
         +P0F5fL8RxzMooS/5kr24yzOAkasHbgzFzAfp9iL8GzTarGPnVvIr+LM0N0moLJtKoVD
         dotiG+zj9c6mzPMGx0dQSRDwlhnme+2WZlOgjZqJPaUFs09sIqlIqCy+apqwK8ctANXh
         oB+Byj0fXcL/UMy4VssBgoD2hmOCWaT7zNgDXq2ctz1TFMsvhw3eJXhTDchprabTG1yD
         VZRA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533x+lcaWnbT8A0/yPLpuOEGHsRR382DcWqSpz/WRz2OBWxmFOZ+
	P+pbm9w7Y8qMZ5zLyEpH7uI=
X-Google-Smtp-Source: ABdhPJwjXs8HHw3daoRYZTvnQFXBxENXM1GfWFtSrfw/y9hx5YKyYLD7UuUHqBIdCOLxO2oVAkF8lA==
X-Received: by 2002:a05:6214:226c:: with SMTP id gs12mr14198145qvb.38.1621622002854;
        Fri, 21 May 2021 11:33:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ae9:f017:: with SMTP id l23ls4363648qkg.2.gmail; Fri, 21 May
 2021 11:33:22 -0700 (PDT)
X-Received: by 2002:a05:620a:448c:: with SMTP id x12mr14055542qkp.52.1621622002423;
        Fri, 21 May 2021 11:33:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621622002; cv=none;
        d=google.com; s=arc-20160816;
        b=J7mV1UUXkQxqUORHRcfWX+3Y2j8cmewOL+E+WfA6e1wMOzxXDe0CgF/XcQJB3LxAp+
         D/0ZYqxjku+aMSdM5zb84ZDsMDwiUYJVztGuJR5N7RdcRc5ao5ebW8dJoMQcsF+GaM4t
         UonqQ61hsxQJK00WBb4wwCz3HPKj6wuMt+2KUqLn8St3zR0jtBGosKrNpfXikacWd8c0
         Ut/YH7GMt7MK/7r5s+fEldxRdxMboy444mlK+R/uMijawUo5/b0Jv3IyZUlUpITbq9OU
         oLd9ENorSaN/yyzUo+iJLV+YFTBRRM6n7DR7T6p+WRAma9YJdNjR3c0VtC6t4hyH2tyq
         2Vsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=dS/S/fqqykuXGGOHLzN1CqM89LeFJ8Wl6DlpxOijWvE=;
        b=LkrrOtXd0wNC+3oIfLFM9OkFbpiL/2ZWpkVykeq1fYR1SMPluhllvJ1419MJk4LFeI
         V6/dKhhUiPMhCfMAEtQlP899MOW8QrNJzHgNAK2IDrS2cSQHzwczoBpOiumOwiNKshPT
         4qwwa6ja8r/1sPzV9jyJRSHOk6LIm3WGBC34dFmrOQvoBIiLu6fRdgUeDnFX8sX3u7Od
         5psfSQk/W+6RIF2Gw9bEooNgMT5uD5t5ITh3kukL5sFfnHQgBVeXm6g7Q9UEGMI6VLHA
         IS2XsGgxj7lZCIJQhQKsZqNwfSCfO1g+diLhahosCzjosgVRQlZ5uXDm/Nwe5a0m2VXY
         SNyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ixsystems.com header.s=google header.b=jjXVE+Xl;
       spf=pass (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=jkirsher@ixsystems.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ixsystems.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id y24si1044348qtm.0.2021.05.21.11.33.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 11:33:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id i5so14943298pgm.0
        for <linux-ntb@googlegroups.com>; Fri, 21 May 2021 11:33:22 -0700 (PDT)
X-Received: by 2002:a05:6a00:14cb:b029:2be:1466:5a28 with SMTP id w11-20020a056a0014cbb02902be14665a28mr11266240pfu.55.1621622002013;
        Fri, 21 May 2021 11:33:22 -0700 (PDT)
Received: from [192.168.0.10] ([75.164.25.153])
        by smtp.gmail.com with ESMTPSA id f9sm4526836pfc.42.2021.05.21.11.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 11:33:21 -0700 (PDT)
Message-ID: <9d0665ec171dc0dffeb8a54c7ef809fa0796ec79.camel@ixsystems.com>
Subject: Re: [RFC] ntb/plx: Add support for PLX hardware
From: Jeff Kirsher <jkirsher@ixsystems.com>
To: Logan Gunthorpe <logang@deltatee.com>, jdmason@kudzu.us, 
	dave.jiang@intel.com, allenbh@gmail.com
Cc: linux-ntb@googlegroups.com, Alexander Motin <mav@ixsystems.com>
Date: Fri, 21 May 2021 11:33:20 -0700
In-Reply-To: <ebfdfe78-67f2-2096-5e89-bd1b65fa819c@deltatee.com>
References: <20210520222323.104901-1-jkirsher@ixsystems.com>
	 <ebfdfe78-67f2-2096-5e89-bd1b65fa819c@deltatee.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34)
MIME-Version: 1.0
X-Original-Sender: jkirsher@ixsystems.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ixsystems.com header.s=google header.b=jjXVE+Xl;       spf=pass
 (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::532
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

On Thu, 2021-05-20 at 17:48 -0600, Logan Gunthorpe wrote:
> > +module_exit(plx_ntb_pci_driver_exit);
> > diff --git a/drivers/ntb/hw/plx/ntb_hw_plx.h
> > b/drivers/ntb/hw/plx/ntb_hw_plx.h
> > new file mode 100644
> > index 000000000000..4f118432e718
> > --- /dev/null
> > +++ b/drivers/ntb/hw/plx/ntb_hw_plx.h
> 
> We generally do not add header files unless they are shared by
> multiple
> C files. All this code can and should be placed at the top of the C
> file.
> > +#define ntb_ndev(__ntb) container_of(__ntb, struct plx_ntb_dev,
> > ntb)
> 
> Although you see this a lot (and I've added my fair share) many
> kernel
> devs prefer these to be open coded. It's much clearer. Also, though,
> why
> the double underscore on ntb?

I realize I did not answer your question, I did the double underscore
to align with how other NTB drivers defined their own versions of the
same macro.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/9d0665ec171dc0dffeb8a54c7ef809fa0796ec79.camel%40ixsystems.com.
