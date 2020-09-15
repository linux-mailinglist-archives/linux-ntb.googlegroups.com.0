Return-Path: <linux-ntb+bncBDOJZOXA5ABBB7PRQH5QKGQE4SJAS2Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D56226A084
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 10:19:11 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id q12sf1547570pjg.9
        for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 01:19:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600157950; cv=pass;
        d=google.com; s=arc-20160816;
        b=DrsGWFKetJOpHNi6f1gGuHmWFQ4L7zdOROa7OGK15DGhz7823KEqKmiuP8V2qZ1sUR
         SDOgZ0h3xMN3847TKKd87DxCNm/Tys4aDqW4wuAyIvQvWwaSpmoFuDkx96T+SXhHo3W9
         B+9W6HS0hDHly/cs4maxqyDpevuq+nE3vPluJNSaZeII1ve0kkRArMnW7WZQ0khhaKOY
         j66w992di4yNH19QhkTXF/o0j4zo8fco1j6kHCRplwS+PgMw5WIs4dugwMkePsYykwq7
         dqOZo1zweJTDouxid5jwRIq7UBUTfzcOezjeSvS+pT96PdIHYVKWD6mUIMez0GegidBf
         +/zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=KD2w97mI6EsPGSIpy9m8Q7Pmg4VcfVvhW61Ea5aq8eY=;
        b=TWZfJm8nBuLhXo3VGCCo1jgl6HcMSHF/8LNFJ/Fr/hVWJkG31JK/fObm159Lh+wFVk
         xx9YhqMkbbu3x8+OFredzhJfN5zErObyV7FImMQqEkwBUitEskMBFuAhRJrBRBJ95LN3
         JfB5jd/5wFQnzdJDhIJm5hGIBoYfJXhN7Kv27MnWn79bU1THjRsviAr6wvpCJIb4Ds5J
         RysjUzdirUnZ+Bkyfn+aRPO6S+aE3ybdVX0m61etiMXHQlc/PkZmUUozrm0s4ZGaBP73
         Sl45orUV4p/pv3ftbDWwLxwW0UK4Svfea6AWWmita3/0C9muQeimaYbimuFe9PObiElb
         HErw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EcDpTG1a;
       spf=pass (google.com: domain of jasowang@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KD2w97mI6EsPGSIpy9m8Q7Pmg4VcfVvhW61Ea5aq8eY=;
        b=rn42Rbu69uTUrN1SIG/JxP+BCVrCaIENEj2wL3C94q6J6lfdDYPLxav4dnTrcG1sju
         X9f2ObLppKMYUUh60mE85zIB2n9fzraQyZHZUfCiz+e5SvhTtQ6yxG81+L5jVoz0ZDgy
         9nMVmqkllzT630+l6B8JNwhT3ipUY27Rj0kiGULa8+MMpRfeHA4AAj9YJuGFRkJBjX6B
         VPMI5EYEEJ9wI2WhRVaW0vfRSWj9Eglnke0mGzm2m1dH134yt3rgLspJkmU924ZQFFDJ
         OIGc8OT6dPNY81LIkCilJc6p5SraEwxCJOkAOnt3zNmudtemng7eo6zgGERo6Kk1YPLO
         Tdfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KD2w97mI6EsPGSIpy9m8Q7Pmg4VcfVvhW61Ea5aq8eY=;
        b=S/LYZpYSWeUia+Jq0+A/SZFZkR6fnNLeLy9lZXFYabbxTRicWFmpPWo5CCmr2Q946m
         kQYUUYa3HVFpOrkV/RAuZKpDKrs13h1Tcxy/l4o5HxG6AUNgR2jdUCk4GPZiWVPmpyuU
         5SPKu8KwP7nMtAEGCKxcvDNycepQ/uJAGmxNytp+6ON4xF7xKbZkOzT3fREWVl13IdCx
         90jREAvk1HziYob0YktHbbIFnHzxzb7LTlyJ6YzEczr8ZvkeXS5+og51j7F0UAWHRAyJ
         5W1Ui+dQZ6KwcZ8R6F3+nIIhi8kNbvPkSicSSJ74bWX2NazSukxHKocA0Dqk7JzFMF4C
         E5tQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530jZBXkuJmsIy4dTDRyOdhTsTqvd+BqdT6RSB/7n4BbtLebADUu
	gmraSrLnb0m53S5ZUgK0L8A=
X-Google-Smtp-Source: ABdhPJzJTRRWQJZrzCqvxV2bfyiEyz+5FSoEeJK/vVoKhhO4OrTE5DBtXlAy1mdlsJuhfIW409IUBw==
X-Received: by 2002:a17:90b:d90:: with SMTP id bg16mr3052545pjb.199.1600157949851;
        Tue, 15 Sep 2020 01:19:09 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls4813419pfc.3.gmail; Tue, 15
 Sep 2020 01:19:09 -0700 (PDT)
X-Received: by 2002:a63:4d5:: with SMTP id 204mr14188843pge.0.1600157949232;
        Tue, 15 Sep 2020 01:19:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600157949; cv=none;
        d=google.com; s=arc-20160816;
        b=QlXw0EfkElxzlq/gP9oleA0wqWSGuh+soPiDZqqp11u5g+NVeLu9AnLYNkKrbgTlnp
         a4+sKOtM0XXkXkp3otUrYhI9zcC+5HAMKCCNDUxUuprMAVXD3KXi6gyoSgq97ARDr3VP
         oRtbGq5Iir94kirhOR/NKS2GMrsxwOsAVU/KENai7oS1KHTs+59MX3/gc84158WlquqO
         FhRPaI+zS3VxqJalL6bjsL+7IDTKJFpKEpwJJwC4wXlmGHzyW1YCtbdoAzIWQ+/F9fND
         Vc+AmWejkq2uX/Wl1+tBKl0FJxynxqwFOplrBgY3S4lNByghil1aUT5Nn7vADymstxBX
         nNtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3bhDFHrLKx2Ugr++K3UZXsMiyEdJCQXQW25owbTuEPc=;
        b=WuaVaefZ6Gp3hW71SWySOdVVvoEOAXmPPgM8uvuDHOXenatJsi7NEK9vW6XFVtIZOj
         v1Gpa/aPK8PYCFoZksc9VSjs+6LCR/QQ16ojNX01e7PURjVgOZ5LQA8E3SKuRTTJrUcw
         pCzJljllS3qqMKwphNJrBRJq35jFVFwiXcNJmj6LerlNAyR8cK6+bkm8NWlnJVizFCYC
         ILbli8UCUgquIrE9LgjUAycSvMr2gVfH7J2OESmjqP2UWJc6e7UzlG02trYdjRbTvYJr
         Vzk2Ah/+9jVuJ8ruRrXiubLC2XL/RLoy07Qo25wvdttcDpICcVXFcYxBk0jKo4E34RGV
         ZQYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EcDpTG1a;
       spf=pass (google.com: domain of jasowang@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id x63si567059pgx.1.2020.09.15.01.19.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 01:19:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jasowang@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-592-zNagHMNCPB-SgFEqX8TqPw-1; Tue, 15 Sep 2020 04:19:03 -0400
X-MC-Unique: zNagHMNCPB-SgFEqX8TqPw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 53E0480F040;
	Tue, 15 Sep 2020 08:19:01 +0000 (UTC)
Received: from [10.72.13.94] (ovpn-13-94.pek2.redhat.com [10.72.13.94])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1A9D55DDB8;
	Tue, 15 Sep 2020 08:18:47 +0000 (UTC)
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
From: Jason Wang <jasowang@redhat.com>
Message-ID: <5733dbfc-76c1-45dc-6dce-ef5449eacc73@redhat.com>
Date: Tue, 15 Sep 2020 16:18:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <edf25301-93c0-4ba6-aa85-5f04137d0906@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jasowang@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EcDpTG1a;
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

Hi Kishon:

On 2020/9/14 =E4=B8=8B=E5=8D=883:23, Kishon Vijay Abraham I wrote:
>> Then you need something that is functional equivalent to virtio PCI
>> which is actually the concept of vDPA (e.g vDPA provides alternatives if
>> the queue_sel is hard in the EP implementation).
> Okay, I just tried to compare the 'struct vdpa_config_ops' and 'struct
> vhost_config_ops' ( introduced in [RFC PATCH 03/22] vhost: Add ops for
> the VHOST driver to configure VHOST device).
>
> struct vdpa_config_ops {
> 	/* Virtqueue ops */
> 	int (*set_vq_address)(struct vdpa_device *vdev,
> 			      u16 idx, u64 desc_area, u64 driver_area,
> 			      u64 device_area);
> 	void (*set_vq_num)(struct vdpa_device *vdev, u16 idx, u32 num);
> 	void (*kick_vq)(struct vdpa_device *vdev, u16 idx);
> 	void (*set_vq_cb)(struct vdpa_device *vdev, u16 idx,
> 			  struct vdpa_callback *cb);
> 	void (*set_vq_ready)(struct vdpa_device *vdev, u16 idx, bool ready);
> 	bool (*get_vq_ready)(struct vdpa_device *vdev, u16 idx);
> 	int (*set_vq_state)(struct vdpa_device *vdev, u16 idx,
> 			    const struct vdpa_vq_state *state);
> 	int (*get_vq_state)(struct vdpa_device *vdev, u16 idx,
> 			    struct vdpa_vq_state *state);
> 	struct vdpa_notification_area
> 	(*get_vq_notification)(struct vdpa_device *vdev, u16 idx);
> 	/* vq irq is not expected to be changed once DRIVER_OK is set */
> 	int (*get_vq_irq)(struct vdpa_device *vdv, u16 idx);
>
> 	/* Device ops */
> 	u32 (*get_vq_align)(struct vdpa_device *vdev);
> 	u64 (*get_features)(struct vdpa_device *vdev);
> 	int (*set_features)(struct vdpa_device *vdev, u64 features);
> 	void (*set_config_cb)(struct vdpa_device *vdev,
> 			      struct vdpa_callback *cb);
> 	u16 (*get_vq_num_max)(struct vdpa_device *vdev);
> 	u32 (*get_device_id)(struct vdpa_device *vdev);
> 	u32 (*get_vendor_id)(struct vdpa_device *vdev);
> 	u8 (*get_status)(struct vdpa_device *vdev);
> 	void (*set_status)(struct vdpa_device *vdev, u8 status);
> 	void (*get_config)(struct vdpa_device *vdev, unsigned int offset,
> 			   void *buf, unsigned int len);
> 	void (*set_config)(struct vdpa_device *vdev, unsigned int offset,
> 			   const void *buf, unsigned int len);
> 	u32 (*get_generation)(struct vdpa_device *vdev);
>
> 	/* DMA ops */
> 	int (*set_map)(struct vdpa_device *vdev, struct vhost_iotlb *iotlb);
> 	int (*dma_map)(struct vdpa_device *vdev, u64 iova, u64 size,
> 		       u64 pa, u32 perm);
> 	int (*dma_unmap)(struct vdpa_device *vdev, u64 iova, u64 size);
>
> 	/* Free device resources */
> 	void (*free)(struct vdpa_device *vdev);
> };
>
> +struct vhost_config_ops {
> +	int (*create_vqs)(struct vhost_dev *vdev, unsigned int nvqs,
> +			  unsigned int num_bufs, struct vhost_virtqueue *vqs[],
> +			  vhost_vq_callback_t *callbacks[],
> +			  const char * const names[]);
> +	void (*del_vqs)(struct vhost_dev *vdev);
> +	int (*write)(struct vhost_dev *vdev, u64 vhost_dst, void *src, int len)=
;
> +	int (*read)(struct vhost_dev *vdev, void *dst, u64 vhost_src, int len);
> +	int (*set_features)(struct vhost_dev *vdev, u64 device_features);
> +	int (*set_status)(struct vhost_dev *vdev, u8 status);
> +	u8 (*get_status)(struct vhost_dev *vdev);
> +};
> +
> struct virtio_config_ops
> I think there's some overlap here and some of the ops tries to do the
> same thing.
>
> I think it differs in (*set_vq_address)() and (*create_vqs)().
> [create_vqs() introduced in struct vhost_config_ops provides
> complimentary functionality to (*find_vqs)() in struct
> virtio_config_ops. It seemingly encapsulates the functionality of
> (*set_vq_address)(), (*set_vq_num)(), (*set_vq_cb)(),..].
>
> Back to the difference between (*set_vq_address)() and (*create_vqs)(),
> set_vq_address() directly provides the virtqueue address to the vdpa
> device but create_vqs() only provides the parameters of the virtqueue
> (like the number of virtqueues, number of buffers) but does not directly
> provide the address. IMO the backend client drivers (like net or vhost)
> shouldn't/cannot by itself know how to access the vring created on
> virtio front-end. The vdpa device/vhost device should have logic for
> that. That will help the client drivers to work with different types of
> vdpa device/vhost device and can access the vring created by virtio
> irrespective of whether the vring can be accessed via mmio or kernel
> space or user space.
>
> I think vdpa always works with client drivers in userspace and providing
> userspace address for vring.


Sorry for being unclear. What I meant is not replacing vDPA with the=20
vhost(bus) you proposed but the possibility of replacing virtio-pci-epf=20
with vDPA in:

My question is basically for the part of virtio_pci_epf_send_command(),=20
so it looks to me you have a vendor specific API to replace the=20
virtio-pci layout of the BAR:


+static int virtio_pci_epf_send_command(struct virtio_pci_device *vp_dev,
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 command)
+{
+=C2=A0=C2=A0=C2=A0 struct virtio_pci_epf *pci_epf;
+=C2=A0=C2=A0=C2=A0 void __iomem *ioaddr;
+=C2=A0=C2=A0=C2=A0 ktime_t timeout;
+=C2=A0=C2=A0=C2=A0 bool timedout;
+=C2=A0=C2=A0=C2=A0 int ret =3D 0;
+=C2=A0=C2=A0=C2=A0 u8 status;
+
+=C2=A0=C2=A0=C2=A0 pci_epf =3D to_virtio_pci_epf(vp_dev);
+=C2=A0=C2=A0=C2=A0 ioaddr =3D vp_dev->ioaddr;
+
+=C2=A0=C2=A0=C2=A0 mutex_lock(&pci_epf->lock);
+=C2=A0=C2=A0=C2=A0 writeb(command, ioaddr + HOST_CMD);
+=C2=A0=C2=A0=C2=A0 timeout =3D ktime_add_ms(ktime_get(), COMMAND_TIMEOUT);
+=C2=A0=C2=A0=C2=A0 while (1) {
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 timedout =3D ktime_after(ktime_get()=
, timeout);
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 status =3D readb(ioaddr + HOST_CMD_S=
TATUS);
+

Several questions:

- It's not clear to me how the synchronization is done between the RC=20
and EP. E.g how and when the value of HOST_CMD_STATUS can be changed.=C2=A0=
=20
If you still want to introduce a new transport, a virtio spec patch=20
would be helpful for us to understand the device API.
- You have you vendor specific layout (according to=20
virtio_pci_epb_table()), so I guess you it's better to have a vendor=20
specific vDPA driver instead
- The advantage of vendor specific vDPA driver is that it can 1) have=20
less codes 2) support userspace drivers through vhost-vDPA (instead of=20
inventing new APIs since we can't use vfio-pci here).


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
> The vhost bus approach doesn't provide any restriction in where the
> virto backend device should be created. This series creates two types of
> virtio backend device (one for PCIe endpoint and the other for NTB) and
> both these devices are created in kernel.


Ok.

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
linux-ntb/5733dbfc-76c1-45dc-6dce-ef5449eacc73%40redhat.com.
