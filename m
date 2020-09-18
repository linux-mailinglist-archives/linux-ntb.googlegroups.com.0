Return-Path: <linux-ntb+bncBDOJZOXA5ABBB6HDSD5QKGQE7L6JNIQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA0726F4DF
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 06:05:13 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id i199sf4096748ybg.22
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 21:05:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600401912; cv=pass;
        d=google.com; s=arc-20160816;
        b=rVYBAA7qfB0GyeMxpz2q8Q8PscqxNSKyCqPqGk7tp3O1hAP2Lyf0o3LByfo+WGsS6z
         qXrz5p2RBfOnNfD6I95m+LrSWcta86FYYHqPN6lSAVxgErY+s7w/m1+xTsRZATTg3p97
         05PrqF5jJ01oYXy5q2qccqDQxVyFYKc9WqFa01SYMPPKokrADBD/sI5pXcs0JQLFoZ9z
         JTi4OALUErY/ADCaXHL7dfaHXacQpBHOR3NUFq6ZUUifrb1lEWS5x+rphvcOwvR3L/3c
         ELcyCLe9CGSZogh28kDKYO4GOHtkJmflOE4F3JKydF7ltP5aTR58r0fC43xOZpy6H9M8
         cdXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=6zcdkCG47jnA31KTHrq17k3KuDydWMCFmMDj7mx1qrs=;
        b=SfEx4hx15Ak6WIy6uCinbgm0fdMoDbdhmOg1JFN1j/s6qwPFHvJ7sBPhz4N+zH+qUZ
         PyzrT2RcS+FjwuGBvi1OD134G+B0z4bDYOIQdQ+yY15lO3bloWEq3vUGiGtPPW/whZ7S
         0BOr5fgk/MVmSFVez0q6KqQsAXewv8xJhHpc3vjo4Xma17YLGdr0+Zrq00/CCxQPLUZO
         5QJUfXpUVS1cJ6pYEItlsLA6DRS+KTOhWekKB93wVW3OJxoc9vZRlsLz4FWf4QT/YBTu
         dLMnkia8i3XSafr8TYepfa9D1fClfDlWq3Nm2WwgGmuvCvfMATFC6/hVofNfiYrmNUQk
         5yGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T0wgRJyn;
       spf=pass (google.com: domain of jasowang@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6zcdkCG47jnA31KTHrq17k3KuDydWMCFmMDj7mx1qrs=;
        b=efB0AUr9mbRkhzk7HrOsgm1Zf5ZMBb4IW2X2JLClQKPned6muIv1tOtV+X7C3qLIUF
         T5YcUYQoXV/yQqeJsO64tSqTES9Bk7nQykU7srEpBhk6p0DE5AsL0C9IeRu45lbvr1lo
         BUFVoVDeA9+ZawyDjvJloDDLIncfD7+9YwbNL3cNXE571kyQCreb7rEeAAp91KoqNTsb
         sTMjwVDNsGKzY0cM2rz8frF2RKJYj8heDqTJOP/STAOPMyGawIu0cbzg+cziE/GkkjaJ
         6S356gJrKrawy4joTqfLmsrBDOrr749qoSinNXFwiScsl3fUZwUpfLMd0AeWpk2Yk9HF
         zl4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6zcdkCG47jnA31KTHrq17k3KuDydWMCFmMDj7mx1qrs=;
        b=ldxrGdKJ+2V6syC5ekcGOOuBug8hv0ErqjtGeKA7K+JGBbrhZRxJLXnpDs7Z3G04z1
         HogWY3jtzrjWiGS3C8puszimbavePKws0DRFIzOpG84euhfq8GGvUGhA67eTIcwm7xe9
         9cPk574CN0jGGTj3LoS0okG9fx9KUr8/yTIEdp4zwTa1MM59MQehpqkUmjbzaf9knFJO
         2iCAP+mEjUTVGS1JCdmJk6/9NtDAzmy/i7RNCofonuDGIAKpeBqXk7mqFI9UFEyOlfls
         a3F9Wq/OHvdgrfoKUUm/jC5Hra/8Wg+OwiEHD2eXP12AbA8Dy4svRVcb5qJ6R1VU1Ld2
         XY9w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533DTFufvtauVoZwI9g8srnDaA6BZW7C/yn8mVtUpNOfeOpWgbuR
	G/26ojTtvoOVvWG7JcBiiSw=
X-Google-Smtp-Source: ABdhPJxEAn0/favXdJozn9LqcZQaT7mkzWednJAqwsDjzeTur+xka/eU0xxcf/i/MrV/Arv+YXNn/Q==
X-Received: by 2002:a05:6902:4d1:: with SMTP id v17mr44481277ybs.389.1600401912211;
        Thu, 17 Sep 2020 21:05:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:aa10:: with SMTP id s16ls1878185ybi.10.gmail; Thu, 17
 Sep 2020 21:05:11 -0700 (PDT)
X-Received: by 2002:a25:ab2b:: with SMTP id u40mr49624453ybi.496.1600401911710;
        Thu, 17 Sep 2020 21:05:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600401911; cv=none;
        d=google.com; s=arc-20160816;
        b=f0sBLjRfYEO5vZEmSi9etbehTr6q8bn+T4yaJ96w/eu+kbYOmOTOusrRxeqDJEfycH
         1K/R1J8mxGqY2dQeL6LMzguMFjSDC1unU4/74quvvvCsuNKhpO1Ar7u1UW36f+A3L9Gq
         RTjtaysnXJLMws93wwW/1EXuqL8RODw7YdDA+16HlPAZyQGd0cTB7TfirOq+29T31umZ
         nOYJFih5t38+2bS67I+DlhW8iERUdxALYrNnW78YiLBsRrHTSrMp7NUvq4Qv8ukyNtOL
         i5Emt9lTkL4g2UCF7Ij+CHXJbBIT1DK9lvGdHV/DWUIeOCHn+X+rvlOSFqnwNjBclqq7
         ovJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=wlk9HAI4Sd4VAZGEYPJ6IaZsqvXvWVGLIyj7zWCRFbs=;
        b=AT4hmJv939B7oYKKpPHWQt7Ef6Qz23NjXs6JtyDR/ZWSKOVb12LMqLQIWHiKF255W8
         EKjIZRMEeG3IB6LfmH//DlrfVwGmvjS1QOl38zMK7/GCfMB65ngMT57wt0oy0ysHUqpX
         v9GtZ6lFrWffwJgOcPUfkm/ZqohziOSaZF4OgQdSEcS8sOe/dt1OuIhaOQr1ogWw6N0H
         06ippge9Zt6on6szAbLgR2u5xEsHMwsg/7tBOBQ9c8kOUrWjuSpGeSLxbeiEoitUxcvO
         2Pns/KgMKra84548b1hJMNvO07NyS2bngKzEsRW7nSau2/L2FlrV7TRT+H0Qww2ZRCGb
         vVOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T0wgRJyn;
       spf=pass (google.com: domain of jasowang@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id s9si183956ybk.3.2020.09.17.21.05.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 21:05:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jasowang@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-86-HkFJZdJ0NPyOW6MrbXbx0Q-1; Fri, 18 Sep 2020 00:05:09 -0400
X-MC-Unique: HkFJZdJ0NPyOW6MrbXbx0Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD7771891E84;
	Fri, 18 Sep 2020 04:05:06 +0000 (UTC)
Received: from [10.72.13.167] (ovpn-13-167.pek2.redhat.com [10.72.13.167])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E73E41C4;
	Fri, 18 Sep 2020 04:04:52 +0000 (UTC)
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
 <ee0aa81d-064b-d7a7-86bb-79a3f4d3dd11@redhat.com>
 <67924594-c70e-390e-ce2e-dda41a94ada1@ti.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <dc006fed-c3b6-8925-51d8-5ed3ee8662cd@redhat.com>
Date: Fri, 18 Sep 2020 12:04:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <67924594-c70e-390e-ce2e-dda41a94ada1@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jasowang@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=T0wgRJyn;
       spf=pass (google.com: domain of jasowang@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
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


On 2020/9/16 =E4=B8=8B=E5=8D=887:47, Kishon Vijay Abraham I wrote:
> Hi Jason,
>
> On 16/09/20 8:40 am, Jason Wang wrote:
>> On 2020/9/15 =E4=B8=8B=E5=8D=8811:47, Kishon Vijay Abraham I wrote:
>>> Hi Jason,
>>>
>>> On 15/09/20 1:48 pm, Jason Wang wrote:
>>>> Hi Kishon:
>>>>
>>>> On 2020/9/14 =E4=B8=8B=E5=8D=883:23, Kishon Vijay Abraham I wrote:
>>>>>> Then you need something that is functional equivalent to virtio PCI
>>>>>> which is actually the concept of vDPA (e.g vDPA provides
>>>>>> alternatives if
>>>>>> the queue_sel is hard in the EP implementation).
>>>>> Okay, I just tried to compare the 'struct vdpa_config_ops' and 'struc=
t
>>>>> vhost_config_ops' ( introduced in [RFC PATCH 03/22] vhost: Add ops fo=
r
>>>>> the VHOST driver to configure VHOST device).
>>>>>
>>>>> struct vdpa_config_ops {
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Virtqueue ops */
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*set_vq_address)(struct vdpa_devi=
ce *vdev,
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 idx, u64 desc_area, u64 driv=
er_area,
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 device_area);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_num)(struct vdpa_device =
*vdev, u16 idx, u32 num);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*kick_vq)(struct vdpa_device *vd=
ev, u16 idx);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_cb)(struct vdpa_device *=
vdev, u16 idx,
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 struct vdpa_callback *cb);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_ready)(struct vdpa_devic=
e *vdev, u16 idx, bool
>>>>> ready);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool (*get_vq_ready)(struct vdpa_devic=
e *vdev, u16 idx);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*set_vq_state)(struct vdpa_device=
 *vdev, u16 idx,
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct vdpa_vq_state *state);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*get_vq_state)(struct vdpa_device=
 *vdev, u16 idx,
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct vdpa_vq_state *state);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vdpa_notification_area
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(*get_vq_notification)(struct vdpa_dev=
ice *vdev, u16 idx);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* vq irq is not expected to be change=
d once DRIVER_OK is set */
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*get_vq_irq)(struct vdpa_device *=
vdv, u16 idx);
>>>>>
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Device ops */
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_vq_align)(struct vdpa_device=
 *vdev);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u64 (*get_features)(struct vdpa_device=
 *vdev);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*set_features)(struct vdpa_device=
 *vdev, u64 features);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_config_cb)(struct vdpa_devi=
ce *vdev,
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct vdpa_callback *cb);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 (*get_vq_num_max)(struct vdpa_devi=
ce *vdev);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_device_id)(struct vdpa_devic=
e *vdev);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_vendor_id)(struct vdpa_devic=
e *vdev);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 (*get_status)(struct vdpa_device *v=
dev);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_status)(struct vdpa_device =
*vdev, u8 status);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*get_config)(struct vdpa_device =
*vdev, unsigned int offset,
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 void *buf, unsigned int len);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_config)(struct vdpa_device =
*vdev, unsigned int offset,
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 const void *buf, unsigned int len);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_generation)(struct vdpa_devi=
ce *vdev);
>>>>>
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* DMA ops */
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*set_map)(struct vdpa_device *vde=
v, struct vhost_iotlb
>>>>> *iotlb);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*dma_map)(struct vdpa_device *vde=
v, u64 iova, u64 size,
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 u64 pa, u32 perm);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*dma_unmap)(struct vdpa_device *v=
dev, u64 iova, u64 size);
>>>>>
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Free device resources */
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*free)(struct vdpa_device *vdev)=
;
>>>>> };
>>>>>
>>>>> +struct vhost_config_ops {
>>>>> +=C2=A0=C2=A0=C2=A0 int (*create_vqs)(struct vhost_dev *vdev, unsigne=
d int nvqs,
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 unsigned int num_bufs, struct vhost_virtqueue *vqs[],
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 vhost_vq_callback_t *callbacks[],
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 const char * const names[]);
>>>>> +=C2=A0=C2=A0=C2=A0 void (*del_vqs)(struct vhost_dev *vdev);
>>>>> +=C2=A0=C2=A0=C2=A0 int (*write)(struct vhost_dev *vdev, u64 vhost_ds=
t, void *src,
>>>>> int len);
>>>>> +=C2=A0=C2=A0=C2=A0 int (*read)(struct vhost_dev *vdev, void *dst, u6=
4 vhost_src, int
>>>>> len);
>>>>> +=C2=A0=C2=A0=C2=A0 int (*set_features)(struct vhost_dev *vdev, u64 d=
evice_features);
>>>>> +=C2=A0=C2=A0=C2=A0 int (*set_status)(struct vhost_dev *vdev, u8 stat=
us);
>>>>> +=C2=A0=C2=A0=C2=A0 u8 (*get_status)(struct vhost_dev *vdev);
>>>>> +};
>>>>> +
>>>>> struct virtio_config_ops
>>>>> I think there's some overlap here and some of the ops tries to do the
>>>>> same thing.
>>>>>
>>>>> I think it differs in (*set_vq_address)() and (*create_vqs)().
>>>>> [create_vqs() introduced in struct vhost_config_ops provides
>>>>> complimentary functionality to (*find_vqs)() in struct
>>>>> virtio_config_ops. It seemingly encapsulates the functionality of
>>>>> (*set_vq_address)(), (*set_vq_num)(), (*set_vq_cb)(),..].
>>>>>
>>>>> Back to the difference between (*set_vq_address)() and (*create_vqs)(=
),
>>>>> set_vq_address() directly provides the virtqueue address to the vdpa
>>>>> device but create_vqs() only provides the parameters of the virtqueue
>>>>> (like the number of virtqueues, number of buffers) but does not
>>>>> directly
>>>>> provide the address. IMO the backend client drivers (like net or vhos=
t)
>>>>> shouldn't/cannot by itself know how to access the vring created on
>>>>> virtio front-end. The vdpa device/vhost device should have logic for
>>>>> that. That will help the client drivers to work with different types =
of
>>>>> vdpa device/vhost device and can access the vring created by virtio
>>>>> irrespective of whether the vring can be accessed via mmio or kernel
>>>>> space or user space.
>>>>>
>>>>> I think vdpa always works with client drivers in userspace and
>>>>> providing
>>>>> userspace address for vring.
>>>> Sorry for being unclear. What I meant is not replacing vDPA with the
>>>> vhost(bus) you proposed but the possibility of replacing virtio-pci-ep=
f
>>>> with vDPA in:
>>> Okay, so the virtio back-end still use vhost and front end should use
>>> vDPA. I see. So the host side PCI driver for EPF should populate
>>> vdpa_config_ops and invoke vdpa_register_device().
>>
>> Yes.
>>
>>
>>>> My question is basically for the part of virtio_pci_epf_send_command()=
,
>>>> so it looks to me you have a vendor specific API to replace the
>>>> virtio-pci layout of the BAR:
>>> Even when we use vDPA, we have to use some sort of
>>> virtio_pci_epf_send_command() to communicate with virtio backend right?
>>
>> Right.
>>
>>
>>> Right, the layout is slightly different from the standard layout.
>>>
>>> This is the layout
>>> struct epf_vhost_reg_queue {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 cmd;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 cmd_status;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 status;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 num_buffers;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 msix_vector;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 queue_addr;
>>
>> What's the meaning of queue_addr here?
> Using queue_addr, the virtio front-end communicates the address of the
> allocated memory for virtqueue to the virtio back-end.
>> Does not mean the device expects a contiguous memory for avail/desc/used
>> ring?
> It's contiguous memory. Isn't this similar to other virtio transport
> (both PCI legacy and modern interface)?.


That's only for legacy device, for modern device we don't have such=20
restriction.


>>
>>> } __packed;
>>>
>>> struct epf_vhost_reg {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 host_features;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 guest_features;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 msix_config;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 num_queues;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 device_status;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 config_generation;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 isr;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 cmd;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 cmd_status;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct epf_vhost_reg_=
queue vq[MAX_VQS];
>>> } __packed;
>>>> +static int virtio_pci_epf_send_command(struct virtio_pci_device
>>>> *vp_dev,
>>>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 command)
>>>> +{
>>>> +=C2=A0=C2=A0=C2=A0 struct virtio_pci_epf *pci_epf;
>>>> +=C2=A0=C2=A0=C2=A0 void __iomem *ioaddr;
>>>> +=C2=A0=C2=A0=C2=A0 ktime_t timeout;
>>>> +=C2=A0=C2=A0=C2=A0 bool timedout;
>>>> +=C2=A0=C2=A0=C2=A0 int ret =3D 0;
>>>> +=C2=A0=C2=A0=C2=A0 u8 status;
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0 pci_epf =3D to_virtio_pci_epf(vp_dev);
>>>> +=C2=A0=C2=A0=C2=A0 ioaddr =3D vp_dev->ioaddr;
>>>> +
>>>> +=C2=A0=C2=A0=C2=A0 mutex_lock(&pci_epf->lock);
>>>> +=C2=A0=C2=A0=C2=A0 writeb(command, ioaddr + HOST_CMD);
>>>> +=C2=A0=C2=A0=C2=A0 timeout =3D ktime_add_ms(ktime_get(), COMMAND_TIME=
OUT);
>>>> +=C2=A0=C2=A0=C2=A0 while (1) {
>>>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 timedout =3D ktime_after(ktime_=
get(), timeout);
>>>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 status =3D readb(ioaddr + HOST_=
CMD_STATUS);
>>>> +
>>>>
>>>> Several questions:
>>>>
>>>> - It's not clear to me how the synchronization is done between the RC
>>>> and EP. E.g how and when the value of HOST_CMD_STATUS can be changed.
>>> The HOST_CMD (commands sent to the EP) is serialized by using mutex.
>>> Once the EP reads the command, it resets the value in HOST_CMD. So
>>> HOST_CMD is less likely an issue.
>>
>> Here's my understanding of the protocol:
>>
>> 1) RC write to HOST_CMD
>> 2) RC wait for HOST_CMD_STATUS to be HOST_CMD_STATUS_OKAY
> That's right!
>> It looks to me what EP should do is
>>
>> 1) EP reset HOST_CMD after reading new command
> That's right! It does.
>> And it looks to me EP should also reset HOST_CMD_STATUS here?
> yeah, that would require RC to send another command to reset the status.
> Didn't see it required in the normal scenario but good to add this.
>> (I thought there should be patch to handle stuffs like this but I didn't
>> find it in this series)
> This is added in [RFC PATCH 19/22] PCI: endpoint: Add EP function driver
> to provide VHOST interface
>
> pci_epf_vhost_cmd_handler() gets commands from RC using "reg->cmd;". On
> the EP side, it is local memory access (mapped to BAR memory exposed to
> the host) and hence accessed using structure member access.


Thanks for the pointer, will have a look at and I think this part need=20
to be carefully designed and the key to the success of the epf transport.


--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/dc006fed-c3b6-8925-51d8-5ed3ee8662cd%40redhat.com.
