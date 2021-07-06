Return-Path: <linux-ntb+bncBCG4XTWK4QLBBZXXSCDQMGQEHYQTQAQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 124703BCCB5
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 13:18:00 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id z1-20020a4ab8810000b029024abe096a35sf10234122ooo.12
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 04:18:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625570279; cv=pass;
        d=google.com; s=arc-20160816;
        b=CKycZKNIfYXzofVLpBJL6VYdJm0CK3rsxeWSZR0Mc4TrMQ/xfPsDttKR5f8yJF1C4L
         fkihEh0A3vt8t5La+0GB/P5sWlRGBL8iFTQl8n7PELpttf2imO7Afy4cJN+9n7bigLFo
         Sr3l4oa4TWepk87EuXiO+cOFMwYw6xWJrgR2DbsrfacCDycaG32ec7brZ7fr9Z76dyf3
         XG+K/R4SWCDQTVsjzU1Mt1aFyCHUVrGOPuAJE0EhbS/F8s0Onhw8HE5rmbuRXfcOAgoz
         yyWdiNIK2/Rf23q4VGXnNsJ7PwfigDMfV4ZUUew0vTOgKZVNd8t/dNtT5DtVeqYY5riF
         aMsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:user-agent:references:organization
         :in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=7awXeSNcYMKYySOpwVVvX0nkmVtt2Wf9s7EtPpzuRPM=;
        b=CCclgww4pCUFvwZuqNCHcEKRMS5ciY58r/MrShJsvbOXR/4u8764/7RNnQXOlXBI0X
         9dP1q2NXyFXvZ0xPlBuq35SlN3cqI1PfPUbS9Dq8a+JYAiTRKG+sh3uZvNUorDH1k9dO
         1NPUUTlbzRPzQtCLoJxRbTs0XVUg89rFw1N/ncZrkNTfYTUpKMmU91MidL84giajShXq
         wS+Am3b3UdwdXOlgU83hzHS+dngyCmL/uC/pRss85SDTLu68qrxKEQwctgqcInuSVlBM
         wZLTwO1UcReS8++TRPWADOxcs6DORl90zqJnO7cPVYWFeEE6fhbm0ym5tIR3cOU7qQZ1
         b8Zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NvkXANPV;
       spf=pass (google.com: domain of cohuck@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references
         :user-agent:date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7awXeSNcYMKYySOpwVVvX0nkmVtt2Wf9s7EtPpzuRPM=;
        b=A21Aj0MeSV3Emv5OR5p5DFPpqHTm2UCguWA2B2RWRaCLlscSC+iZcvr+wtXobxZ0c9
         WDq0opCFvttg62IldMSoXArlSCbGrIjel3/HBsP7QkJOoNuX8eC+qwtEV2nYl/OVpVZO
         OFCdkrm7QmKA0A1XS5IsQgjuCgd4yOxGW/bsvvPWLDTRt/W0ePt9HL/evNFz0k8wbaml
         D6H3uhY3etIkXrpvWc/Ev/yc/XrqDQTBpWIyJjP5VLzg6s/MgrcQZYokPKNd8BzOxkSU
         wFQnDJfJ+72C4sJxUncszwVVhoa/XT683uqtgPt5yYmBV9CTq+yRlCBlxS4vwVvns+OK
         yH5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:user-agent:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7awXeSNcYMKYySOpwVVvX0nkmVtt2Wf9s7EtPpzuRPM=;
        b=RoXg3txSIVxUawv1FNoBpbGNgLOhfEM33ICfe9YpZT01pKIfQnf+gxOLpSGG9N/CaP
         MK/SXCmFnvPnNY+U5ZxDi1fmJQLCfSVOcqq/3NlCBHkaJDNK5oKdtl7Po/Bgnt4ombQX
         PDHeDyWQUlvTpbV+0SZasrZA2WO2htxePeDs3Q50XviwY9/u3IyBVBpVyukfbeCnx5Tv
         jBivW9ke0R1H0fuYbV8VHg6Ajz0JOvuttu32FURqb630mRuu0+1FPvvR8ecouoDkNbAy
         +nSqDVx2HfUQBmU0xeJRr7cQ4J2XsS4v7ubK0qz9QHV2h5kcpJl1Id8M6oFDYF4E+FaK
         XpJQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531xsQMFuU8dvU97rlrnGP8Bw9PhpSDUJKcl4YtyPp5Lat+qgroX
	meF2yX7Am/hQFZod3LElT5Q=
X-Google-Smtp-Source: ABdhPJzXIPAGwcE0MOZPfXXcTcA3203lSPZcvfBA3v8XSKpBdzNEm14t+otlHu284Cw99ihHd60cyg==
X-Received: by 2002:a9d:73d7:: with SMTP id m23mr14188667otk.127.1625570278970;
        Tue, 06 Jul 2021 04:17:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:3d9:: with SMTP id o25ls2739215oie.11.gmail; Tue,
 06 Jul 2021 04:17:58 -0700 (PDT)
X-Received: by 2002:a05:6808:210e:: with SMTP id r14mr13702309oiw.172.1625570278352;
        Tue, 06 Jul 2021 04:17:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625570278; cv=none;
        d=google.com; s=arc-20160816;
        b=YEebHqYEbBCs/c6e+m+UN4dpog+XTl1aHJSOEC/Mwz42zFpBSSRz0FFy2sELzetS/5
         YICZ6kNcAfoyhdm3+uoE2aURbotkgG+9rRAhMrlE14rP2EcXVColholnWESQ+2Nty17F
         ZFhGAueuzDus1u/NjX8zLU+mvmuLcY5cRy+f4jpHzeQrY1LsnN0UPFTPsRvt2Tyn/JNB
         Z71pqLBdHrftjfTpfSW9tBd+z6fZ1rPeIfXorAJHw09vdrtxR/vnpJl2O7hYbc77Rl1r
         bh6XLd8pqWZdFu8DoWaKu4GQwrQNwUaZ5+hpyL6NW/43970/oqETsKw27/oVlBjgxoDX
         GzUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:organization:in-reply-to:subject:cc:to:from
         :dkim-signature;
        bh=X+JgLl9QuEVsbPi9CHfgp/50dUcjaNVT1a3Q1xwSglg=;
        b=SGBkJb75qQNgd2ibNwqUi4kq0ukQoFumPyVpDwsqhmiF6f7o7Hn0p1XYTNpZkgi1z8
         97bkaP9OmGo6QkmWJTAJisiexawB4/Ebz83vvQ8pp3atFpd3+zxzXCpCMLkkPGnDaHQI
         h4vG2u+6y3JB7gkp663Jds1R1oVW3hreSjVXghRq8aLGwRc+e2fIhBfdd9Rc9NkUMcIi
         Y+HsPwW/jUMieSBBv46FNQYu/gkibyLmVCuEEAeMoPk3Ag9/94aRjSV67vbp37axVaQj
         KanhyQoLNOcQEJY8rokhQs/yBI+QQyyIOeSNZHEcMqkIFlTwfxwbt27/SwJrqac6XTCf
         LS5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NvkXANPV;
       spf=pass (google.com: domain of cohuck@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id h21si1654719oof.2.2021.07.06.04.17.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:17:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of cohuck@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-4nfFutG7PMmWyFVqxIxp-g-1; Tue, 06 Jul 2021 07:17:56 -0400
X-MC-Unique: 4nfFutG7PMmWyFVqxIxp-g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 957EB1800D41;
	Tue,  6 Jul 2021 11:17:49 +0000 (UTC)
Received: from localhost (ovpn-113-13.ams2.redhat.com [10.36.113.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FC1919C79;
	Tue,  6 Jul 2021 11:17:39 +0000 (UTC)
From: Cornelia Huck <cohuck@redhat.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, Greg
 Kroah-Hartman
 <gregkh@linuxfoundation.org>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org, Russell King
 <linux@armlinux.org.uk>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Helge
 Deller <deller@gmx.de>, Geoff Levand <geoff@infradead.org>, Michael
 Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, William
 Breathitt Gray <vilhelm.gray@gmail.com>, =?utf-8?Q?Rafa=C5=82_Mi=C5=82eck?=
 =?utf-8?Q?i?= <zajec5@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Alison Schofield
 <alison.schofield@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, Ira
 Weiny <ira.weiny@intel.com>, Ben Widawsky <ben.widawsky@intel.com>, Dan
 Williams <dan.j.williams@intel.com>, Dave Jiang <dave.jiang@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi
 <cristian.marussi@arm.com>, Wu Hao <hao.wu@intel.com>, Tom Rix
 <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>, Jiri Kosina
 <jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, "K. Y.
 Srinivasan" <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Dexuan Cui <decui@microsoft.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>, Wolfram Sang <wsa@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Samuel Iglesias Gonsalvez
 <siglesias@igalia.com>, Jens Taprogge <jens.taprogge@taprogge.org>,
 Johannes Thumshirn <morbidrsa@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov
 <oakad@yahoo.com>, Ulf Hansson <ulf.hansson@linaro.org>, Lee Jones
 <lee.jones@linaro.org>, Tomas Winkler <tomas.winkler@intel.com>, Arnd
 Bergmann <arnd@arndb.de>, Jakub Kicinski <kuba@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, Jon Mason <jdmason@kudzu.us>, Allen Hubbe
 <allenbh@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84sk?=
 =?utf-8?Q?i?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Dominik Brodowski
 <linux@dominikbrodowski.net>, Maximilian Luz <luzmaximilian@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>,
 Matt Porter <mporter@kernel.crashing.org>, Alexandre Bounine
 <alex.bou9@gmail.com>, Ohad Ben-Cohen <ohad@wizery.com>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, Thorsten Scherer <t.scherer@eckelmann.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Andy Gross
 <agross@kernel.org>, Mark Brown <broonie@kernel.org>, Stephen Boyd
 <sboyd@kernel.org>, Michael Buesch <m@bues.ch>, Sven Van Asbroeck
 <TheSven73@gmail.com>, Johan Hovold <johan@kernel.org>, Alex Elder
 <elder@kernel.org>, Andreas Noever <andreas.noever@gmail.com>, Michael
 Jamet <michael.jamet@intel.com>, Mika Westerberg
 <mika.westerberg@linux.intel.com>, Yehezkel Bernat
 <YehezkelShB@gmail.com>, Rob Herring <robh@kernel.org>, Jiri Slaby
 <jirislaby@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>, Alex Williamson
 <alex.williamson@redhat.com>, Martyn Welch <martyn@welchs.me.uk>, Manohar
 Vanga <manohar.vanga@gmail.com>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, Stefano
 Stabellini <sstabellini@kernel.org>, Johannes Berg
 <johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>, Takashi
 Iwai <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>, Tyrel Datwyler
 <tyreld@linux.ibm.com>, Vladimir Zapolskiy <vz@mleia.com>, Samuel Holland
 <samuel@sholland.org>, Qinglang Miao <miaoqinglang@huawei.com>, Alexey
 Kardashevskiy <aik@ozlabs.ru>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>, Joey Pabalan <jpabalanb@gmail.com>, Pali
 =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>, Adrian Hunter
 <adrian.hunter@intel.com>, Frank Li
 <lznuaa@gmail.com>, Mike Christie <michael.christie@oracle.com>, Bodo
 Stroesser <bostroesser@gmail.com>, Hannes Reinecke <hare@suse.de>, David
 Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>, Julien
 Grall <jgrall@amazon.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-parisc@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-acpi@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-cxl@vger.kernel.org, nvdimm@lists.linux.dev,
 dmaengine@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-fpga@vger.kernel.org, linux-input@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-i3c@lists.infradead.org, industrypack-devel@lists.sourceforge.net,
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-ntb@googlegroups.com,
 linux-pci@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-scsi@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-staging@lists.linux.dev,
 greybus-dev@lists.linaro.org, target-devel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-serial@vger.kernel.org,
 virtualization@lists.linux-foundation.org, kvm@vger.kernel.org,
 xen-devel@lists.xenproject.org
Subject: Re: [PATCH] bus: Make remove callback return void
In-Reply-To: <87pmvvhfqq.fsf@redhat.com>
Organization: Red Hat GmbH
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
 <87pmvvhfqq.fsf@redhat.com>
User-Agent: Notmuch/0.32.1 (https://notmuchmail.org)
Date: Tue, 06 Jul 2021 13:17:37 +0200
Message-ID: <87mtqzhesu.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cohuck@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NvkXANPV;
       spf=pass (google.com: domain of cohuck@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
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

On Tue, Jul 06 2021, Cornelia Huck <cohuck@redhat.com> wrote:

> On Tue, Jul 06 2021, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.d=
e> wrote:
>
>> The driver core ignores the return value of this callback because there
>> is only little it can do when a device disappears.
>>
>> This is the final bit of a long lasting cleanup quest where several
>> buses were converted to also return void from their remove callback.
>> Additionally some resource leaks were fixed that were caused by drivers
>> returning an error code in the expectation that the driver won't go
>> away.
>>
>> With struct bus_type::remove returning void it's prevented that newly
>> implemented buses return an ignored error code and so don't anticipate
>> wrong expectations for driver authors.
>
> Yay!
>
>>
>> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
>> ---
>> Hello,
>>
>> this patch depends on "PCI: endpoint: Make struct pci_epf_driver::remove
>> return void" that is not yet applied, see
>> https://lore.kernel.org/r/20210223090757.57604-1-u.kleine-koenig@pengutr=
onix.de.
>>
>> I tested it using allmodconfig on amd64 and arm, but I wouldn't be
>> surprised if I still missed to convert a driver. So it would be great to
>> get this into next early after the merge window closes.
>
> I'm afraid you missed the s390-specific busses in drivers/s390/cio/
> (css/ccw/ccwgroup).

The change for vfio/mdev looks good.

The following should do the trick for s390; not sure if other
architectures have easy-to-miss busses as well.

diff --git a/drivers/s390/cio/ccwgroup.c b/drivers/s390/cio/ccwgroup.c
index 9748165e08e9..a66f416138ab 100644
--- a/drivers/s390/cio/ccwgroup.c
+++ b/drivers/s390/cio/ccwgroup.c
@@ -439,17 +439,15 @@ module_exit(cleanup_ccwgroup);
=20
 /************************** driver stuff ******************************/
=20
-static int ccwgroup_remove(struct device *dev)
+static void ccwgroup_remove(struct device *dev)
 {
 	struct ccwgroup_device *gdev =3D to_ccwgroupdev(dev);
 	struct ccwgroup_driver *gdrv =3D to_ccwgroupdrv(dev->driver);
=20
 	if (!dev->driver)
-		return 0;
+		return;
 	if (gdrv->remove)
 		gdrv->remove(gdev);
-
-	return 0;
 }
=20
 static void ccwgroup_shutdown(struct device *dev)
diff --git a/drivers/s390/cio/css.c b/drivers/s390/cio/css.c
index a974943c27da..ebc321edba51 100644
--- a/drivers/s390/cio/css.c
+++ b/drivers/s390/cio/css.c
@@ -1371,15 +1371,14 @@ static int css_probe(struct device *dev)
 	return ret;
 }
=20
-static int css_remove(struct device *dev)
+static void css_remove(struct device *dev)
 {
 	struct subchannel *sch;
-	int ret;
=20
 	sch =3D to_subchannel(dev);
-	ret =3D sch->driver->remove ? sch->driver->remove(sch) : 0;
+	if (sch->driver->remove)
+		sch->driver->remove(sch);
 	sch->driver =3D NULL;
-	return ret;
 }
=20
 static void css_shutdown(struct device *dev)
diff --git a/drivers/s390/cio/device.c b/drivers/s390/cio/device.c
index 84f659cafe76..61d5d55bd9c8 100644
--- a/drivers/s390/cio/device.c
+++ b/drivers/s390/cio/device.c
@@ -1742,7 +1742,7 @@ ccw_device_probe (struct device *dev)
 	return 0;
 }
=20
-static int ccw_device_remove(struct device *dev)
+static void ccw_device_remove(struct device *dev)
 {
 	struct ccw_device *cdev =3D to_ccwdev(dev);
 	struct ccw_driver *cdrv =3D cdev->drv;
@@ -1776,8 +1776,6 @@ static int ccw_device_remove(struct device *dev)
 	spin_unlock_irq(cdev->ccwlock);
 	io_subchannel_quiesce(sch);
 	__disable_cmf(cdev);
-
-	return 0;
 }
=20
 static void ccw_device_shutdown(struct device *dev)
diff --git a/drivers/s390/cio/scm.c b/drivers/s390/cio/scm.c
index 9f26d4310bb3..b6b4589c70bd 100644
--- a/drivers/s390/cio/scm.c
+++ b/drivers/s390/cio/scm.c
@@ -28,12 +28,13 @@ static int scmdev_probe(struct device *dev)
 	return scmdrv->probe ? scmdrv->probe(scmdev) : -ENODEV;
 }
=20
-static int scmdev_remove(struct device *dev)
+static void scmdev_remove(struct device *dev)
 {
 	struct scm_device *scmdev =3D to_scm_dev(dev);
 	struct scm_driver *scmdrv =3D to_scm_drv(dev->driver);
=20
-	return scmdrv->remove ? scmdrv->remove(scmdev) : -ENODEV;
+	if (scmdrv->remove)
+		scmdrv->remove(scmdev);
 }
=20
 static int scmdev_uevent(struct device *dev, struct kobj_uevent_env *env)
diff --git a/drivers/s390/crypto/ap_bus.c b/drivers/s390/crypto/ap_bus.c
index d2560186d771..8a0d37c0e2a5 100644
--- a/drivers/s390/crypto/ap_bus.c
+++ b/drivers/s390/crypto/ap_bus.c
@@ -884,7 +884,7 @@ static int ap_device_probe(struct device *dev)
 	return rc;
 }
=20
-static int ap_device_remove(struct device *dev)
+static void ap_device_remove(struct device *dev)
 {
 	struct ap_device *ap_dev =3D to_ap_dev(dev);
 	struct ap_driver *ap_drv =3D ap_dev->drv;
@@ -909,8 +909,6 @@ static int ap_device_remove(struct device *dev)
 	ap_dev->drv =3D NULL;
=20
 	put_device(dev);
-
-	return 0;
 }
=20
 struct ap_queue *ap_get_qdev(ap_qid_t qid)

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/87mtqzhesu.fsf%40redhat.com.
