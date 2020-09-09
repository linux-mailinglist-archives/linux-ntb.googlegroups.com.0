Return-Path: <linux-ntb+bncBDOJZOXA5ABBBYVK4L5AKGQE7RHKMUQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5932F262A9D
	for <lists+linux-ntb@lfdr.de>; Wed,  9 Sep 2020 10:42:11 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id r184sf953584qka.21
        for <lists+linux-ntb@lfdr.de>; Wed, 09 Sep 2020 01:42:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599640930; cv=pass;
        d=google.com; s=arc-20160816;
        b=y2HIoN6myKdp4IIUWgxFKEgsfPrCS2QTJunhqB/AM/8Y8NDxPvOXUYQNy5AXeSLFns
         /mrTQsbCviEXopljK+7LFZAhyxa1GQ+G8RU9bK0uIIKXBm/RGZ/FsojdEa0sHs+PzCVX
         ic0ewtg1JtxbFx0HeqmmW4SSx7GPysfwqxXquN0qyvuEYyBAYh0RXxAxIwZ2J/OQ+1vl
         /oe7NF9XH1iwj7KINZxGOnwjzV4GlBUWH/ncHYFXQV/uZvu1wGU9xNxAKSmvNhQN54Ud
         DM2UbLnTT9ryw7p6MdcYRD/dvL5AhJG/a+odq1iELFSi0kf6+WVYePLxyC/t9WTIx4uI
         jAdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Nr1E61Ua2/JbOGlZA9p9k7y2eqDvgCIA4b57g+wZLV8=;
        b=S46/tMFFjEJzlcySwtetxBALpI/sbGQSMzusJlQ5z1jsNoNXsSoWGkdFt62eJT2U+d
         8tL2IF2tOMDDxeRvFIgAaU4IWZwIEop6Xu9YlwF5C9A3gRHI90lUzUlUhNr09Pa+lmJU
         SeMI9KEQeayBBabqyJa/WVeUMCZznPfvfzGN/mlrUwKxjURvGRksXLi0sNwfzafKYNsB
         XmfUo1e1jL440rWo4VPfrfWWfR2nbRqYF15Ojgs75PxpZ+YyXYl9pUzWSKojLVC+0szA
         exdMFYHlVa+69Z7asnSex2Fkfwo+EtWHtAzqzUyDqYStitNgxbC32GRUihN7OfuW/q0f
         ZVBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bHjGmcvq;
       spf=pass (google.com: domain of jasowang@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nr1E61Ua2/JbOGlZA9p9k7y2eqDvgCIA4b57g+wZLV8=;
        b=i/fKO2IJffUtvDeJvttMLPrq2YiPaj8E7XPd+qDkw9yEYtdZyJ/AoV7qN1cV2HnTYh
         9n8V/6Y9Upq5ygvMDRJJI58iIGb8Pj6SH2ZpxQTm8UeyAyVWOw7niiNryFwPEoDxD5Zx
         iS92HnyI7sxMxl+XwY5XTIYdc017btIq6dmkwjABq04rdXLtU7ZpqIFfm1pSt0UULPTy
         iDeHuVGYsUdL9vHoNjA6VP/MWKlhfUn4KfXJzSbpys+17nmFVyAtAJFxfLWR0dxgfaiY
         /2IpNdubsD+KqEq262fa1KGLRkpN8I9yKxqA6UPAuidAhKJZRBLjON/eZowTEibM4qqU
         ji3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nr1E61Ua2/JbOGlZA9p9k7y2eqDvgCIA4b57g+wZLV8=;
        b=ZHhdMnniHwOg1T4M2eTxN+HxlBnXKXQ3nOXMBXNZ9ifqFuMtO/CJxiMowK7aCuNLNG
         vZ6jbqVphLoWHdhMr1bSWESrNKCwY1PDaLOu3mS+mD710rB+G5lGhqCpV2LUpXmoD4C7
         dOKUZN4w4uZZXbHpS06rwh7TNqQvHV+kYm3Snz2huGNwQR22tNM7S78a9tTVjtkCTUdl
         N1Q1yVemR67OfB7BNzo+TKeYV4nGC+5xMDIi/QoV6+VkZN0jnguteJe4SxN5bhgtQn4o
         NqPxiFhYrq37c3vfnN4K61zB+62gNRCS+crFh+Jd6z4EQylP/GMP+67T1OQfrG5KpAWi
         nIvw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531erxm7c8eccagKtUFoqDzCQCIIPeJDmUAQWwbBFSR4W+q7EP7a
	41recsJXY/z1oBeVspX1rJs=
X-Google-Smtp-Source: ABdhPJzVjNjtUCucWwiTxuf7BnpLDO9Nh6hRbhXMKc32DLmBQ7Lalialq67Icd5IKh9yIr617wA0kQ==
X-Received: by 2002:ac8:7144:: with SMTP id h4mr2203398qtp.156.1599640930413;
        Wed, 09 Sep 2020 01:42:10 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:9c44:: with SMTP id w4ls434760qve.10.gmail; Wed, 09 Sep
 2020 01:42:10 -0700 (PDT)
X-Received: by 2002:ad4:5653:: with SMTP id bl19mr3041784qvb.7.1599640929932;
        Wed, 09 Sep 2020 01:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599640929; cv=none;
        d=google.com; s=arc-20160816;
        b=Ex3J0/HqksknmifsC2/N5mvWZbdUBC75MQ+DrZRWc229dhwVdEXi7mH0g8iigukFEM
         0vAZdJXERooyNnVAvy+Su3DrCBKCM4hcpZPQOl9nKwFChQi8En7am0eYk/qPvl8UIEvy
         Sa4yIhmPluvceBMReONtrcAPn1t6XpjRblFY6kWRJ/mOdIpDTTCvQdwofmFIDQB5jxKQ
         b+eO7+SF23mDFZ6XUWT8SrJLI7dnoLEd1K+uEz8/X1i4TXtR+pdH3UhCdA2q089tXIaY
         b1klHJFZf/ccQYPDSxodurSGA+An6D2SrcM/X7g9TJM7CFOIuMQbSIcOSrAtPjytNWfx
         NLnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DtMgeTKjCn17clYv2JEnI3ffDcOPCVRLd/V3CjCE3+4=;
        b=n25oxQa5WPBfhdJUnXKwbfuRh/7JHbdStZALOQezGj2+8xdlE4TLIPUPzNc30bGm+q
         BLjLTrkwMi7g9uGsbLmBquM4vx6P1E7gmYpMLOzN8Prb7qmBlAQhZgybTYLaPWDCIcYa
         boVWLcCRqlQXreRJSFpPRByP2cr27LWd4H1fUD3EGNu7xu2hRKkNpqrq5Y5nSPHGorFi
         3lEIHlyaClfzc1T0a2MG7gAyo2/tJ7SOPD0c9CmYVhOkDbXoQ7tLGWodEbVK6SJ+bA7u
         2FVWVjRlkOSRaLGawzJp9T6pDQZNPj1WwbrkVhffVMBsQJOCFyUglKGeac3T9cBCUaXZ
         iQtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bHjGmcvq;
       spf=pass (google.com: domain of jasowang@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id k6si134553qkg.1.2020.09.09.01.42.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Sep 2020 01:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jasowang@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-23-_Ya4rfJ9P0yaQlRETl-ZPw-1; Wed, 09 Sep 2020 04:42:06 -0400
X-MC-Unique: _Ya4rfJ9P0yaQlRETl-ZPw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D592981F02E;
	Wed,  9 Sep 2020 08:42:03 +0000 (UTC)
Received: from [10.72.12.24] (ovpn-12-24.pek2.redhat.com [10.72.12.24])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9D6F760C15;
	Wed,  9 Sep 2020 08:41:46 +0000 (UTC)
Subject: Re: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC
 communication
To: Cornelia Huck <cohuck@redhat.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Stefano Garzarella <sgarzare@redhat.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-ntb@googlegroups.com, linux-pci@vger.kernel.org, kvm@vger.kernel.org,
 virtualization@lists.linux-foundation.org, netdev@vger.kernel.org
References: <20200702082143.25259-1-kishon@ti.com>
 <20200702055026-mutt-send-email-mst@kernel.org>
 <603970f5-3289-cd53-82a9-aa62b292c552@redhat.com>
 <14c6cad7-9361-7fa4-e1c6-715ccc7e5f6b@ti.com>
 <59fd6a0b-8566-44b7-3dae-bb52b468219b@redhat.com>
 <ce9eb6a5-cd3a-a390-5684-525827b30f64@ti.com>
 <da2b671c-b05d-a57f-7bdf-8b1043a41240@redhat.com>
 <fee8a0fb-f862-03bd-5ede-8f105b6af529@ti.com>
 <b2178e1d-2f5c-e8a3-72fb-70f2f8d6aa45@redhat.com>
 <45a8a97c-2061-13ee-5da8-9877a4a3b8aa@ti.com>
 <c8739d7f-e12e-f6a2-7018-9eeaf6feb054@redhat.com>
 <20200828123409.4cd2a812.cohuck@redhat.com>
 <ac8f7e4f-9f46-919a-f5c2-89b07794f0ab@ti.com>
 <9cd58cd1-0041-3d98-baf7-6e5bc2e7e317@redhat.com>
 <20200908183701.60b93441.cohuck@redhat.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <d6e4be52-78d8-546c-20a4-23bdaea68ba5@redhat.com>
Date: Wed, 9 Sep 2020 16:41:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200908183701.60b93441.cohuck@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: jasowang@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bHjGmcvq;
       spf=pass (google.com: domain of jasowang@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 2020/9/9 =E4=B8=8A=E5=8D=8812:37, Cornelia Huck wrote:
>> Then you need something that is functional equivalent to virtio PCI
>> which is actually the concept of vDPA (e.g vDPA provides alternatives if
>> the queue_sel is hard in the EP implementation).
> It seems I really need to read up on vDPA more... do you have a pointer
> for diving into this alternatives aspect?


See vpda_config_ops in include/linux/vdpa.h

Especially this part:

 =C2=A0=C2=A0=C2=A0 int (*set_vq_address)(struct vdpa_device *vdev,
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 u16 idx, u64 desc_area, u64 driver_area,
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 u64 device_area);

This means for the devices (e.g endpoint device) that is hard to=20
implement virtio-pci layout, it can use any other register layout or=20
vendor specific way to configure the virtqueue.


>
>>> "Virtio Over NTB" should anyways be a new transport.
>>>> Does that make any sense?
>>> yeah, in the approach I used the initial features are hard-coded in
>>> vhost-rpmsg (inherent to the rpmsg) but when we have to use adapter
>>> layer (vhost only for accessing virtio ring and use virtio drivers on
>>> both front end and backend), based on the functionality (e.g, rpmsg),
>>> the vhost should be configured with features (to be presented to the
>>> virtio) and that's why additional layer or APIs will be required.
>> A question here, if we go with vhost bus approach, does it mean the
>> virtio device can only be implemented in EP's userspace?
> Can we maybe implement an alternative bus as well that would allow us
> to support different virtio device implementations (in addition to the
> vhost bus + userspace combination)?


That should be fine, but I'm not quite sure that implementing the device=20
in kerne (kthread) is the good approach.

Thanks


>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/d6e4be52-78d8-546c-20a4-23bdaea68ba5%40redhat.com.
