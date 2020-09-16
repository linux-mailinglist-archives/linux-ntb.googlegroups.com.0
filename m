Return-Path: <linux-ntb+bncBDOJZOXA5ABBBUMEQ35QKGQEMAAS23Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5973C26BA87
	for <lists+linux-ntb@lfdr.de>; Wed, 16 Sep 2020 05:11:14 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id n18sf1242287vkq.10
        for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 20:11:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600225873; cv=pass;
        d=google.com; s=arc-20160816;
        b=tEmJQFG97XBfMCxPp73USOlHEZ6tTumOebfnCwDKup5vJygruBjN2hzHmMnYMZTYo4
         B/FmB2y/CSgE094xQgRaFTIdClvmuqvL1zjmaNfMZJh8/nLu6UHxG9gZ7M1uDX2lwSYv
         0eeJBZdjOERA6Jtu2MMh8AWfj3ef4QyTq8amziZYU7u8lT0dRR/gQimGZR0maFJ5MKgb
         p9mq/gfON9XQaIZOeu0fgZgKyK68UuO+zXj29Ry7UMwJKkMrpH54rfMPqOAEDRhCXPWQ
         5vsO3h9UEUiFxv7nCPdTSfN9D/GFZFXTsLG17IVvdSMK3pHJ+AMvPNmmpd5/OBoLW6Y2
         fWmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Hl8djqxDrAX+u2Ffp/1U3Eo9hJtLvtAtWPMI0dG46DM=;
        b=nO0zrrzE+2M+6pqm8FXzIGGdcO+CZjpEK9HnE/egH2yH7hzmJX0d539m1+qyloK9om
         Lc4OpYkzSS4AUamKueNAOQyL+TEhUpvL+9Gq6RaA7iPWbBTZyS2xOoIdY0jW5qB62R/n
         KN262BGse3+vp7pPBtD/R4XiZSoZu51krq1ThvblrUwO36zC7SMhrky2hYMDG/VzV0Zf
         m+2BSXKLsnsaA3Z66U2tUA55ASKht2pdjIrbiYdIo8g+M0cS+vUJI/HTtVfZOFkD8gu9
         ouIw/mj3kdB0XZKGXuzaO7LRKh5tiIKu9wjixvkl2ptZL940+It/0LTaotFr9fvpEVcx
         Te6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=e2eSZZ5s;
       spf=pass (google.com: domain of jasowang@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hl8djqxDrAX+u2Ffp/1U3Eo9hJtLvtAtWPMI0dG46DM=;
        b=VkzSUmf2x30GNlKferaoVG2LqaaZLFX1F16SDZIrP7w1DKLsmSXINObFVb8UXUeu4U
         ++sYP2/52VGul7R232LqVZqDCv5hjmESedYLzA/GAz65cUgvkjdg9qfGbHq4BXpBumKe
         mNlw6Z6V1shIcfglxce63TaVR1MY0svW7Rs+BMcu9C1Wj11Ez7p8HDiE0JDx+PivBY0q
         TSQxvHeaIGYZeStrgBVXWO0lPVhu6g0WXEfkUwwMgfeiGlwcowWhYJMd9n6TPBQ2T5Ut
         jrxUbyH802CCm4A22zeUK5RfMGef1iF768nfUqYlu4DoGewTArzBeF9iQkj3Mj1kDI+C
         VlOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hl8djqxDrAX+u2Ffp/1U3Eo9hJtLvtAtWPMI0dG46DM=;
        b=tWdWBTBwrE4RMh5xfmDfXDRQ4OlXhOyMd3yP39Nz32D7y/370iBBVISdTC9FdlTf6N
         Sanp1gKeVPIJio+nR5fmDoMmQwqX+Dxqrau3HSYQWxDERsFdxiXWcjtiWXE4AJR4zymY
         pyH+WEG58JGJ6smHzj86dGYZIa1ZsNfJrW6FuiL2fNXSJtIbMOH4B8LErNwBcyNsGl1d
         nAXWALFereb2XCOeUK47c20zM3qIDB3TkbCQhba4yjcwCPnjp3aUl6dFjaoqNroU8pIZ
         pcf2Xjos+S0JWMaDmGiE5nlhKhuPSe62aReOrJDzuG9bYalvjGeMzQruD02hZ7xVK+sw
         tjkw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532csugTZKMMkKo9q8WzIDRiHbrZjm+ZxyhdjmqvutyuuagAa7Pb
	7B3FIkG4D+J8doWwxIThlh8=
X-Google-Smtp-Source: ABdhPJwwkWJS7Ec2/CYh5rgdpS6cv+Je0bvJIboUx68ZPw/as4+U7yWM9HayCbNkMQStKnYtscoX4Q==
X-Received: by 2002:a05:6102:533:: with SMTP id m19mr3335840vsa.43.1600225873334;
        Tue, 15 Sep 2020 20:11:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:f146:: with SMTP id t6ls72729vsm.7.gmail; Tue, 15 Sep
 2020 20:11:12 -0700 (PDT)
X-Received: by 2002:a05:6102:242e:: with SMTP id l14mr3439782vsi.59.1600225872695;
        Tue, 15 Sep 2020 20:11:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600225872; cv=none;
        d=google.com; s=arc-20160816;
        b=L45DAIWqSDSRZrQwsfNorXf6V+74S4vndHMz7aizC6kwEpzm4/2JwAXyoTntp7Cj7Y
         EJy9XmC16p78ukGKgkuS3dsldZVGpuFYFoRGSrmqW0Q+FON3Cpk+e24wpzoc5p0RJlR8
         HyUmxaDaqTEVJCig71yR5lNG13xqwLPRuc2xod7ebPycbouGhNe5f+yiwhy67tG7YET7
         H4WbrNbW7iq09TldrmFPGq+gr/9V6LTQiqA78wgl//ScLANzz6gv2KzJIlZvqvRPO1Az
         ozNOUvh2BJdmygtd/NW0F0ms3pYzW4YETgKXBv0IIpqxmDUgdec4G8zHSp1W0yzBrpeI
         u9jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=pUfKtm728JV5HfEPBrNg85FNcQ7Ve2VTddaezZoQ5WY=;
        b=WcH/Zt4L5SBRlGp7NNevf7b7IBMs+eY8xfzEoVqV6MxCFXVP2SY5QQzIvFOpJHbBB9
         okHPRo4TKvfu2yCMHzJWMaxUKl+jqSkl7wybRV8x1OZIcwi8eAHqSUsqeERHyklhLMoh
         hufESg+7E7qVKP8w8/EUvQcpgeX6xvaPQwbSnph1RpEj9b0n4IEjONEG16z94wyHuIEY
         kAb1uuhM6oyK0gkOmSdHxPoyclfivT2m+7FSn1X86h2ro7OnmvAJLwCVg6Sy8uPjzkQ2
         ulWK0a/F2QJPBtL+tylL/jUVtuQU6YpchJlVML7CgPyZGZDV2n2jFuwK7Bek3BlEOBKe
         P84w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=e2eSZZ5s;
       spf=pass (google.com: domain of jasowang@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id u25si1224628vkl.5.2020.09.15.20.11.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 20:11:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jasowang@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-165-J5rmrvsYOhil88kP7owOHQ-1; Tue, 15 Sep 2020 23:11:09 -0400
X-MC-Unique: J5rmrvsYOhil88kP7owOHQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6EC658015FD;
	Wed, 16 Sep 2020 03:11:06 +0000 (UTC)
Received: from [10.72.13.186] (ovpn-13-186.pek2.redhat.com [10.72.13.186])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C29ED75124;
	Wed, 16 Sep 2020 03:10:52 +0000 (UTC)
Subject: Re: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC
 communication
To: Kishon Vijay Abraham I <kishon@ti.com>, Cornelia Huck <cohuck@redhat.com>
Cc: "Michael S. Tsirkin" <mst@redhat.com>, Ohad Ben-Cohen <ohad@wizery.com>,
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
 <edf25301-93c0-4ba6-aa85-5f04137d0906@ti.com>
 <5733dbfc-76c1-45dc-6dce-ef5449eacc73@redhat.com>
 <181ae83d-edeb-9406-27cc-1195fe29ae95@ti.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <ee0aa81d-064b-d7a7-86bb-79a3f4d3dd11@redhat.com>
Date: Wed, 16 Sep 2020 11:10:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <181ae83d-edeb-9406-27cc-1195fe29ae95@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jasowang@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=e2eSZZ5s;
       spf=pass (google.com: domain of jasowang@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
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


On 2020/9/15 =E4=B8=8B=E5=8D=8811:47, Kishon Vijay Abraham I wrote:
> Hi Jason,
>
> On 15/09/20 1:48 pm, Jason Wang wrote:
>> Hi Kishon:
>>
>> On 2020/9/14 =E4=B8=8B=E5=8D=883:23, Kishon Vijay Abraham I wrote:
>>>> Then you need something that is functional equivalent to virtio PCI
>>>> which is actually the concept of vDPA (e.g vDPA provides alternatives =
if
>>>> the queue_sel is hard in the EP implementation).
>>> Okay, I just tried to compare the 'struct vdpa_config_ops' and 'struct
>>> vhost_config_ops' ( introduced in [RFC PATCH 03/22] vhost: Add ops for
>>> the VHOST driver to configure VHOST device).
>>>
>>> struct vdpa_config_ops {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0/* Virtqueue ops */
>>>  =C2=A0=C2=A0=C2=A0=C2=A0int (*set_vq_address)(struct vdpa_device *vdev=
,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 idx, u64 desc_area, u64 driver_area,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 device_area);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_num)(struct vdpa_device *vdev, u=
16 idx, u32 num);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0void (*kick_vq)(struct vdpa_device *vdev, u16 =
idx);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_cb)(struct vdpa_device *vdev, u1=
6 idx,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 struct vdpa_callback *cb);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_ready)(struct vdpa_device *vdev,=
 u16 idx, bool ready);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0bool (*get_vq_ready)(struct vdpa_device *vdev,=
 u16 idx);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0int (*set_vq_state)(struct vdpa_device *vdev, =
u16 idx,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct vdpa_vq_state *state);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0int (*get_vq_state)(struct vdpa_device *vdev, =
u16 idx,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct vdpa_vq_state *state);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0struct vdpa_notification_area
>>>  =C2=A0=C2=A0=C2=A0=C2=A0(*get_vq_notification)(struct vdpa_device *vde=
v, u16 idx);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0/* vq irq is not expected to be changed once D=
RIVER_OK is set */
>>>  =C2=A0=C2=A0=C2=A0=C2=A0int (*get_vq_irq)(struct vdpa_device *vdv, u16=
 idx);
>>>
>>>  =C2=A0=C2=A0=C2=A0=C2=A0/* Device ops */
>>>  =C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_vq_align)(struct vdpa_device *vdev);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0u64 (*get_features)(struct vdpa_device *vdev);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0int (*set_features)(struct vdpa_device *vdev, =
u64 features);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0void (*set_config_cb)(struct vdpa_device *vdev=
,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct vdpa_callback *cb);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0u16 (*get_vq_num_max)(struct vdpa_device *vdev=
);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_device_id)(struct vdpa_device *vdev)=
;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_vendor_id)(struct vdpa_device *vdev)=
;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0u8 (*get_status)(struct vdpa_device *vdev);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0void (*set_status)(struct vdpa_device *vdev, u=
8 status);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0void (*get_config)(struct vdpa_device *vdev, u=
nsigned int offset,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 void *buf, unsigned int len);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0void (*set_config)(struct vdpa_device *vdev, u=
nsigned int offset,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 const void *buf, unsigned int len);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_generation)(struct vdpa_device *vdev=
);
>>>
>>>  =C2=A0=C2=A0=C2=A0=C2=A0/* DMA ops */
>>>  =C2=A0=C2=A0=C2=A0=C2=A0int (*set_map)(struct vdpa_device *vdev, struc=
t vhost_iotlb *iotlb);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0int (*dma_map)(struct vdpa_device *vdev, u64 i=
ova, u64 size,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 u64 pa, u32 perm);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0int (*dma_unmap)(struct vdpa_device *vdev, u64=
 iova, u64 size);
>>>
>>>  =C2=A0=C2=A0=C2=A0=C2=A0/* Free device resources */
>>>  =C2=A0=C2=A0=C2=A0=C2=A0void (*free)(struct vdpa_device *vdev);
>>> };
>>>
>>> +struct vhost_config_ops {
>>> +=C2=A0=C2=A0=C2=A0 int (*create_vqs)(struct vhost_dev *vdev, unsigned =
int nvqs,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 unsigned int num_bufs, struct vhost_virtqueue *vqs[],
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 vhost_vq_callback_t *callbacks[],
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 const char * const names[]);
>>> +=C2=A0=C2=A0=C2=A0 void (*del_vqs)(struct vhost_dev *vdev);
>>> +=C2=A0=C2=A0=C2=A0 int (*write)(struct vhost_dev *vdev, u64 vhost_dst,=
 void *src,
>>> int len);
>>> +=C2=A0=C2=A0=C2=A0 int (*read)(struct vhost_dev *vdev, void *dst, u64 =
vhost_src, int
>>> len);
>>> +=C2=A0=C2=A0=C2=A0 int (*set_features)(struct vhost_dev *vdev, u64 dev=
ice_features);
>>> +=C2=A0=C2=A0=C2=A0 int (*set_status)(struct vhost_dev *vdev, u8 status=
);
>>> +=C2=A0=C2=A0=C2=A0 u8 (*get_status)(struct vhost_dev *vdev);
>>> +};
>>> +
>>> struct virtio_config_ops
>>> I think there's some overlap here and some of the ops tries to do the
>>> same thing.
>>>
>>> I think it differs in (*set_vq_address)() and (*create_vqs)().
>>> [create_vqs() introduced in struct vhost_config_ops provides
>>> complimentary functionality to (*find_vqs)() in struct
>>> virtio_config_ops. It seemingly encapsulates the functionality of
>>> (*set_vq_address)(), (*set_vq_num)(), (*set_vq_cb)(),..].
>>>
>>> Back to the difference between (*set_vq_address)() and (*create_vqs)(),
>>> set_vq_address() directly provides the virtqueue address to the vdpa
>>> device but create_vqs() only provides the parameters of the virtqueue
>>> (like the number of virtqueues, number of buffers) but does not directl=
y
>>> provide the address. IMO the backend client drivers (like net or vhost)
>>> shouldn't/cannot by itself know how to access the vring created on
>>> virtio front-end. The vdpa device/vhost device should have logic for
>>> that. That will help the client drivers to work with different types of
>>> vdpa device/vhost device and can access the vring created by virtio
>>> irrespective of whether the vring can be accessed via mmio or kernel
>>> space or user space.
>>>
>>> I think vdpa always works with client drivers in userspace and providin=
g
>>> userspace address for vring.
>>
>> Sorry for being unclear. What I meant is not replacing vDPA with the
>> vhost(bus) you proposed but the possibility of replacing virtio-pci-epf
>> with vDPA in:
> Okay, so the virtio back-end still use vhost and front end should use
> vDPA. I see. So the host side PCI driver for EPF should populate
> vdpa_config_ops and invoke vdpa_register_device().


Yes.


>> My question is basically for the part of virtio_pci_epf_send_command(),
>> so it looks to me you have a vendor specific API to replace the
>> virtio-pci layout of the BAR:
> Even when we use vDPA, we have to use some sort of
> virtio_pci_epf_send_command() to communicate with virtio backend right?


Right.


>
> Right, the layout is slightly different from the standard layout.
>
> This is the layout
> struct epf_vhost_reg_queue {
>          u8 cmd;
>          u8 cmd_status;
>          u16 status;
>          u16 num_buffers;
>          u16 msix_vector;
>          u64 queue_addr;


What's the meaning of queue_addr here?

Does not mean the device expects a contiguous memory for avail/desc/used=20
ring?


> } __packed;
>
> struct epf_vhost_reg {
>          u64 host_features;
>          u64 guest_features;
>          u16 msix_config;
>          u16 num_queues;
>          u8 device_status;
>          u8 config_generation;
>          u32 isr;
>          u8 cmd;
>          u8 cmd_status;
>          struct epf_vhost_reg_queue vq[MAX_VQS];
> } __packed;
>>
>> +static int virtio_pci_epf_send_command(struct virtio_pci_device *vp_dev=
,
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 command)
>> +{
>> +=C2=A0=C2=A0=C2=A0 struct virtio_pci_epf *pci_epf;
>> +=C2=A0=C2=A0=C2=A0 void __iomem *ioaddr;
>> +=C2=A0=C2=A0=C2=A0 ktime_t timeout;
>> +=C2=A0=C2=A0=C2=A0 bool timedout;
>> +=C2=A0=C2=A0=C2=A0 int ret =3D 0;
>> +=C2=A0=C2=A0=C2=A0 u8 status;
>> +
>> +=C2=A0=C2=A0=C2=A0 pci_epf =3D to_virtio_pci_epf(vp_dev);
>> +=C2=A0=C2=A0=C2=A0 ioaddr =3D vp_dev->ioaddr;
>> +
>> +=C2=A0=C2=A0=C2=A0 mutex_lock(&pci_epf->lock);
>> +=C2=A0=C2=A0=C2=A0 writeb(command, ioaddr + HOST_CMD);
>> +=C2=A0=C2=A0=C2=A0 timeout =3D ktime_add_ms(ktime_get(), COMMAND_TIMEOU=
T);
>> +=C2=A0=C2=A0=C2=A0 while (1) {
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 timedout =3D ktime_after(ktime_ge=
t(), timeout);
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 status =3D readb(ioaddr + HOST_CM=
D_STATUS);
>> +
>>
>> Several questions:
>>
>> - It's not clear to me how the synchronization is done between the RC
>> and EP. E.g how and when the value of HOST_CMD_STATUS can be changed.
> The HOST_CMD (commands sent to the EP) is serialized by using mutex.
> Once the EP reads the command, it resets the value in HOST_CMD. So
> HOST_CMD is less likely an issue.


Here's my understanding of the protocol:

1) RC write to HOST_CMD
2) RC wait for HOST_CMD_STATUS to be HOST_CMD_STATUS_OKAY

It looks to me what EP should do is

1) EP reset HOST_CMD after reading new command

And it looks to me EP should also reset HOST_CMD_STATUS here?

(I thought there should be patch to handle stuffs like this but I didn't=20
find it in this series)


>
> A sufficiently large time is given for the EP to complete it's operation
> (1 Sec) where the EP provides the status in HOST_CMD_STATUS. After it
> expires, HOST_CMD_STATUS_NONE is written to HOST_CMD_STATUS. There could
> be case where EP updates HOST_CMD_STATUS after RC writes
> HOST_CMD_STATUS_NONE, but by then HOST has already detected this as
> failure and error-ed out.
>  =20
>> If you still want to introduce a new transport, a virtio spec patch
>> would be helpful for us to understand the device API.
> Okay, that should be on https://github.com/oasis-tcs/virtio-spec.git?


Yes.


>> - You have you vendor specific layout (according to
>> virtio_pci_epb_table()), so I guess you it's better to have a vendor
>> specific vDPA driver instead
> Okay, with vDPA, we are free to define our own layouts.


Right, but vDPA have other requirements. E.g it requires the device have=20
the ability to save/restore the state (e.g the last_avail_idx).

So it actually depends on what you want. If you don't care about=20
userspace drivers and want to have a standard transport, you can still=20
go virtio.


>> - The advantage of vendor specific vDPA driver is that it can 1) have
>> less codes 2) support userspace drivers through vhost-vDPA (instead of
>> inventing new APIs since we can't use vfio-pci here).
> I see there's an additional level of indirection from virtio to vDPA and
> probably no need for spec update but don't exactly see how it'll reduce
> code.


AFAIK you don't need to implement your own setup_vq and del_vq.


>
> For 2, Isn't vhost-vdpa supposed to run on virtio backend?


Not currently, vDPA is a superset of virtio (e.g it support virtqueue=20
state save/restore). This it should be possible in the future probably.


>
>  From a high level, I think I should be able to use vDPA for
> virtio_pci_epf.c. Would you also suggest using vDPA for ntb_virtio.c?
> ([RFC PATCH 20/22] NTB: Add a new NTB client driver to implement VIRTIO
> functionality).


I think it's your call. If you want

1) a well-defined standard virtio transport
2) willing to finalize d and maintain the spec
3) doesn't care about userspace drivers

You can go with virtio, otherwise vDPA.

Thanks


>
> Thanks
> Kishon
>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/ee0aa81d-064b-d7a7-86bb-79a3f4d3dd11%40redhat.com.
