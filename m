Return-Path: <linux-ntb+bncBDB3VRMVXIPRBA7JSCDQMGQEERFIKOI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8D93BCA7D
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 12:46:27 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id z18-20020a2e96520000b0290178006de192sf8585984ljh.3
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 03:46:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625568387; cv=pass;
        d=google.com; s=arc-20160816;
        b=J1oba0CCu1/jW9+e4U3ui1I2Upmz4KTTcwwYX0cebh4qPt8blsHOebF5e+zI+LUEoX
         o3h1jYGnN0ezo7igDQGZfNDkfIwVLqgeXu5iAvmc27NG3v6RNOAS1UHrWbZW+SCTL9Te
         YEC29e9jCE3ld9yo6elMVLIoVF/k+6MtYfG5XqYoBeueI3sbQFentZOwJzF0MSW/1Xf4
         VcyLcRROH5ZwJM2s1AVQ930xx3PmywCRo2IjjrTRdrI+bUHt+kPNPbdtEYvK4be4ITa2
         UAkvA6qp+mUs+g9lODisFuATb2PN1z7x64Oat9WdlKqo9w3XcsvO/eWQYDrsNvlDBdpS
         +exA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kTknlr0iXPtU5lKe+fs+aCRLrrMwc7Vf6LF1mCrOD7A=;
        b=fjtIPzanDxSxzJN4Y3Zqx/9yMrJ+VhjKRhtOrWVygQc1GUL4ggS+ulXlqhqCeu6qKP
         fr+o3aWKWiGmwhk/xEUBEpFyEVCQDIdKztMPydPNshU/yEMjf2VafsU+vXw+N53xtHmT
         NTl37ULibStzltNEGGThc2I7kZHyT1vSdfgRqIR/xTk98/dClSttr745lB83NSOD+MVe
         b1Mg1DMkeXf0ILGDyZmTPF5DVUR1f7wEbZI2vsgf++Rbq+f3vvlKIfUV0MXvGtttdS/o
         NMrrg16xz0LHaXUubbL8DctdAIO286nXIIFMyl5ZY6XLBIyMPbLpMTDct6Ovw4pPWG0O
         ynTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=kbxXFkbf;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.28 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kTknlr0iXPtU5lKe+fs+aCRLrrMwc7Vf6LF1mCrOD7A=;
        b=UMzoAeEw8ezxkjQRpPYqxt56qx8hPKTUclBUUuHmrcMbUF0Km3dveBBnzFg62/zcit
         culeMdJcLYfB2vfcPAyi02Y+phgUfyjrUYK/r7+WelogCZWDVhJv9wa7AKUfGAZjAkZO
         U1wwkCgbZEic382O0HH/YSH2QHdyV4+xI3n8gW7a/PuUMqEaV8PbSKWPeLVfVSjDJMba
         IY5RFklhqBA2QTCd0FJPdK9MjRUp9OtURxNQOg+HuhZkP6TcGBB3EG0yx+oidIyZMSBQ
         PRI/RBGhW/9KP96E2Po0XfRyq4ETFkvIZ2uXIxFvXRaxe9JRQgXasdQmnd2oDGCFoAMv
         ktPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kTknlr0iXPtU5lKe+fs+aCRLrrMwc7Vf6LF1mCrOD7A=;
        b=q2W5CAJbrbHlnFTpaKzckFjIjY4Dfd2NnF9AITM0bH3R1JNsdQZEAiOGnhu97pF1UO
         BBFnQA7BEPr6DwN6HS400jOeIE1qiknKz7WTiGRvwTW/pTyKogWEipeEUjwiH8u4bIzz
         hg7HdT3XR8eCv1xLN181VN6SfMxEUUUztCVOfQ2TLfgK6LHwETNuB1lDif9ElcS/+d5b
         BUQzBoR4wifPbeLkmV6iMJSKWwHPfDKjof2fi1mq5DwVAPaLrGPVgzbFJUud5Bt5UxuY
         U+VvNBBVZqPpfMWeufSZ+Yw3gDA/Vr4IjK2QtH2H/GGFWenCMgEN6ClQ7QCX6t6C1aW5
         PifA==
X-Gm-Message-State: AOAM532DW/469Xb/+ZsV4u+2ANH9yng6v6oFneniGseGt62qbxcPKHbr
	a0MvSJQYpPWiQHbMgoN6vbE=
X-Google-Smtp-Source: ABdhPJx7YgMEY/0mjhCZ3CHxGaE88GVITm9uutSBVwB3sDj0iSla5bNvxkh7Vnkaq+8CpsXayoJVzA==
X-Received: by 2002:a05:6512:218d:: with SMTP id b13mr14319428lft.346.1625568387303;
        Tue, 06 Jul 2021 03:46:27 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:444:: with SMTP id y4ls263546lfk.3.gmail; Tue, 06
 Jul 2021 03:46:26 -0700 (PDT)
X-Received: by 2002:a19:6d06:: with SMTP id i6mr7431225lfc.295.1625568386256;
        Tue, 06 Jul 2021 03:46:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625568386; cv=none;
        d=google.com; s=arc-20160816;
        b=ZzHMODpThRrO5k1TW1lpQd1DK/+5xJ25ZAczvpylUJ4R7sCCdyZmSU0POaY/9uSsBu
         OFki8kEZXVWfAnHZWPUSROT2GQ8A/TisR7FVYrZM3J9IU03Cc7MZ4gBXst0frb4DjRQP
         8lxwwRjRRBjq1j8tdx1zfgdorgtXYIU1yvu8b5cNwYVXGVOGQCcszjPcdV8ehMkburNw
         OMaOXpl/Pqa+FTgETcmmRAEGIKQ5dud0tNkEZQ8qTA2pSRQi28B7TKrAwgOvz7vZJV08
         K1vFclYGh6soi5qM6Ap0/5j+/Q3eIv/ic/9vAvF8oKrIJCMYD+uJXOfMGPdlDQt+1KWb
         vR1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=aE1tCzEag7jR0P5TuKfYDuKVYa2hKLfqqWSsRgXGqys=;
        b=mdIwLAKEytF6TxXS+BtzBis6pbDFKKneV9oLTznRX6ShVxBR+yAHSl6JYw9/kGHAQR
         Ke4vSBLetWImBQ3dauprrfKugwgvSTZXjFrv4gK8GZcv1FRfAXgBTm7ib+70qf6p7pcG
         waHFfW1kZkINzBYyfvzkzNq/r8IQsvw8r2TY4ehHJXYLXkzpbx/6GDU8rwGlQrTM2F0Q
         CGIznEUYuN7k9DiyO8gDAo0yakhA9P4P24rUv14VQcGFIl1li4vV8gYAhhylv1hSONz4
         u+qE0dX/8XGxJ/FPVnbNEuBf4XYd19aldBOgdBoJB7oMQSu9Lhq+erGQv4ogkPw+O8Ij
         V0aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=kbxXFkbf;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.28 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id b41si433087ljr.6.2021.07.06.03.46.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 03:46:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 78E11223A6;
	Tue,  6 Jul 2021 10:46:25 +0000 (UTC)
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap1.suse-dmz.suse.de (Postfix) with ESMTPS id D275A1372D;
	Tue,  6 Jul 2021 10:46:19 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap1.suse-dmz.suse.de with ESMTPSA
	id RWpiMXs05GC9aQAAGKfGzw
	(envelope-from <jgross@suse.com>); Tue, 06 Jul 2021 10:46:19 +0000
Subject: Re: [PATCH] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>, Geoff Levand <geoff@infradead.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Len Brown <lenb@kernel.org>, William Breathitt Gray
 <vilhelm.gray@gmail.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Alison Schofield <alison.schofield@intel.com>,
 Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 Ben Widawsky <ben.widawsky@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, Dave Jiang <dave.jiang@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>, Wu Hao <hao.wu@intel.com>,
 Tom Rix <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>,
 Jiri Kosina <jikos@kernel.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Dexuan Cui <decui@microsoft.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Wolfram Sang <wsa@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Samuel Iglesias Gonsalvez <siglesias@igalia.com>,
 Jens Taprogge <jens.taprogge@taprogge.org>,
 Johannes Thumshirn <morbidrsa@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 Tomas Winkler <tomas.winkler@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Dominik Brodowski <linux@dominikbrodowski.net>,
 Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede
 <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>,
 Matt Porter <mporter@kernel.crashing.org>,
 Alexandre Bounine <alex.bou9@gmail.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Thorsten Scherer <t.scherer@eckelmann.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Andy Gross <agross@kernel.org>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Michael Buesch <m@bues.ch>,
 Sven Van Asbroeck <TheSven73@gmail.com>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>, Andreas Noever <andreas.noever@gmail.com>,
 Michael Jamet <michael.jamet@intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Yehezkel Bernat <YehezkelShB@gmail.com>, Rob Herring <robh@kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Cornelia Huck <cohuck@redhat.com>, Martyn Welch <martyn@welchs.me.uk>,
 Manohar Vanga <manohar.vanga@gmail.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Samuel Holland <samuel@sholland.org>, Qinglang Miao
 <miaoqinglang@huawei.com>, Alexey Kardashevskiy <aik@ozlabs.ru>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Joey Pabalan <jpabalanb@gmail.com>, =?UTF-8?Q?Pali_Roh=c3=a1r?=
 <pali@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Frank Li <lznuaa@gmail.com>, Mike Christie <michael.christie@oracle.com>,
 Bodo Stroesser <bostroesser@gmail.com>, Hannes Reinecke <hare@suse.de>,
 David Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>,
 Julien Grall <jgrall@amazon.com>, linux-arm-kernel@lists.infradead.org,
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
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
From: "'Juergen Gross' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <4209f6c7-c45d-f1e2-3e6c-e3e5ac23ebfa@suse.com>
Date: Tue, 6 Jul 2021 12:46:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="LJ84wkOoGvpkTOYSJk04bukxIJd4NuWQK"
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=kbxXFkbf;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.28 as permitted
 sender) smtp.mailfrom=jgross@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
X-Original-From: Juergen Gross <jgross@suse.com>
Reply-To: Juergen Gross <jgross@suse.com>
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--LJ84wkOoGvpkTOYSJk04bukxIJd4NuWQK
Content-Type: multipart/mixed; boundary="kIonFKJi2YzXeYHIXjoGkrp8dW9qDQLaQ";
 protected-headers="v1"
From: Juergen Gross <jgross@suse.com>
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>, Geoff Levand <geoff@infradead.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Len Brown <lenb@kernel.org>, William Breathitt Gray
 <vilhelm.gray@gmail.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Alison Schofield <alison.schofield@intel.com>,
 Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 Ben Widawsky <ben.widawsky@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, Dave Jiang <dave.jiang@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>, Wu Hao <hao.wu@intel.com>,
 Tom Rix <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>,
 Jiri Kosina <jikos@kernel.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Dexuan Cui <decui@microsoft.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Wolfram Sang <wsa@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Samuel Iglesias Gonsalvez <siglesias@igalia.com>,
 Jens Taprogge <jens.taprogge@taprogge.org>,
 Johannes Thumshirn <morbidrsa@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 Tomas Winkler <tomas.winkler@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Dominik Brodowski <linux@dominikbrodowski.net>,
 Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede
 <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>,
 Matt Porter <mporter@kernel.crashing.org>,
 Alexandre Bounine <alex.bou9@gmail.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Thorsten Scherer <t.scherer@eckelmann.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Andy Gross <agross@kernel.org>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Michael Buesch <m@bues.ch>,
 Sven Van Asbroeck <TheSven73@gmail.com>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>, Andreas Noever <andreas.noever@gmail.com>,
 Michael Jamet <michael.jamet@intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Yehezkel Bernat <YehezkelShB@gmail.com>, Rob Herring <robh@kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Cornelia Huck <cohuck@redhat.com>, Martyn Welch <martyn@welchs.me.uk>,
 Manohar Vanga <manohar.vanga@gmail.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Samuel Holland <samuel@sholland.org>, Qinglang Miao
 <miaoqinglang@huawei.com>, Alexey Kardashevskiy <aik@ozlabs.ru>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Joey Pabalan <jpabalanb@gmail.com>, =?UTF-8?Q?Pali_Roh=c3=a1r?=
 <pali@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Frank Li <lznuaa@gmail.com>, Mike Christie <michael.christie@oracle.com>,
 Bodo Stroesser <bostroesser@gmail.com>, Hannes Reinecke <hare@suse.de>,
 David Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>,
 Julien Grall <jgrall@amazon.com>, linux-arm-kernel@lists.infradead.org,
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
Message-ID: <4209f6c7-c45d-f1e2-3e6c-e3e5ac23ebfa@suse.com>
Subject: Re: [PATCH] bus: Make remove callback return void
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>

--kIonFKJi2YzXeYHIXjoGkrp8dW9qDQLaQ
Content-Type: multipart/mixed;
 boundary="------------ABA0B815A5B864B832260E8B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ABA0B815A5B864B832260E8B
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06.07.21 11:50, Uwe Kleine-K=C3=B6nig wrote:
> The driver core ignores the return value of this callback because there
> is only little it can do when a device disappears.
>=20
> This is the final bit of a long lasting cleanup quest where several
> buses were converted to also return void from their remove callback.
> Additionally some resource leaks were fixed that were caused by drivers
> returning an error code in the expectation that the driver won't go
> away.
>=20
> With struct bus_type::remove returning void it's prevented that newly
> implemented buses return an ignored error code and so don't anticipate
> wrong expectations for driver authors.
>=20
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

Xen-bits:

Acked-by: Juergen Gross <jgross@suse.com>


Juergen

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/4209f6c7-c45d-f1e2-3e6c-e3e5ac23ebfa%40suse.com.

--------------ABA0B815A5B864B832260E8B
Content-Type: application/pgp-keys;
 name="OpenPGP_0xB0DE9DD628BF132F.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
Content-Disposition: attachment;
 filename="OpenPGP_0xB0DE9DD628BF132F.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFOMcBYBCACgGjqjoGvbEouQZw/ToiBg9W98AlM2QHV+iNHsEs7kxWhKMjrioyspZKOBy=
cWx
w3ie3j9uvg9EOB3aN4xiTv4qbnGiTr3oJhkB1gsb6ToJQZ8uxGq2kaV2KL9650I1SJvedYm8O=
f8Z
d621lSmoKOwlNClALZNew72NjJLEzTalU1OdT7/i1TXkH09XSSI8mEQ/ouNcMvIJNwQpd369y=
9bf
IhWUiVXEK7MlRgUG6MvIj6Y3Am/BBLUVbDa4+gmzDC9ezlZkTZG2t14zWPvxXP3FAp2pkW0xq=
G7/
377qptDmrk42GlSKN4z76ELnLxussxc7I2hx18NUcbP8+uty4bMxABEBAAHNHEp1ZXJnZW4gR=
3Jv
c3MgPGpnQHBmdXBmLm5ldD7CwHkEEwECACMFAlOMcBYCGwMHCwkIBwMCAQYVCAIJCgsEFgIDA=
QIe
AQIXgAAKCRCw3p3WKL8TL0KdB/93FcIZ3GCNwFU0u3EjNbNjmXBKDY4FUGNQH2lvWAUy+dnyT=
hpw
dtF/jQ6j9RwE8VP0+NXcYpGJDWlNb9/JmYqLiX2Q3TyevpB0CA3dbBQp0OW0fgCetToGIQrg0=
MbD
1C/sEOv8Mr4NAfbauXjZlvTj30H2jO0u+6WGM6nHwbh2l5O8ZiHkH32iaSTfN7Eu5RnNVUJbv=
oPH
Z8SlM4KWm8rG+lIkGurqqu5gu8q8ZMKdsdGC4bBxdQKDKHEFExLJK/nRPFmAuGlId1E3fe10v=
5QL
+qHI3EIPtyfE7i9Hz6rVwi7lWKgh7pe0ZvatAudZ+JNIlBKptb64FaiIOAWDCx1SzR9KdWVyZ=
2Vu
IEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+wsB5BBMBAgAjBQJTjHCvAhsDBwsJCAcDAgEGFQgCC=
QoL
BBYCAwECHgECF4AACgkQsN6d1ii/Ey/HmQf/RtI7kv5A2PS4RF7HoZhPVPogNVbC4YA6lW7Dr=
Wf0
teC0RR3MzXfy6pJ+7KLgkqMlrAbN/8Dvjoz78X+5vhH/rDLa9BuZQlhFmvcGtCF8eR0T1v0nC=
/nu
AFVGy+67q2DH8As3KPu0344TBDpAvr2uYM4tSqxK4DURx5INz4ZZ0WNFHcqsfvlGJALDeE0Lh=
ITT
d9jLzdDad1pQSToCnLl6SBJZjDOX9QQcyUigZFtCXFst4dlsvddrxyqT1f17+2cFSdu7+ynLm=
XBK
7abQ3rwJY8SbRO2iRulogc5vr/RLMMlscDAiDkaFQWLoqHHOdfO9rURssHNN8WkMnQfvUewRz=
80h
SnVlcmdlbiBHcm9zcyA8amdyb3NzQG5vdmVsbC5jb20+wsB5BBMBAgAjBQJTjHDXAhsDBwsJC=
AcD
AgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey8PUQf/ehmgCI9jB9hlgexLvgOtf7PJn=
FOX
gMLdBQgBlVPO3/D9R8LtF9DBAFPNhlrsfIG/SqICoRCqUcJ96Pn3P7UUinFG/I0ECGF4EvTE1=
jnD
kfJZr6jrbjgyoZHiw/4BNwSTL9rWASyLgqlA8u1mf+c2yUwcGhgkRAd1gOwungxcwzwqgljf0=
N51
N5JfVRHRtyfwq/ge+YEkDGcTU6Y0sPOuj4Dyfm8fJzdfHNQsWq3PnczLVELStJNdapwPOoE+l=
otu
fe3AM2vAEYJ9rTz3Cki4JFUsgLkHFqGZarrPGi1eyQcXeluldO3m91NK/1xMI3/+8jbO0tsn1=
tqS
EUGIJi7ox80eSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuZGU+wsB5BBMBAgAjBQJTjHDrA=
hsD
BwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey+LhQf9GL45eU5vOowA2u5N3=
g3O
ZUEBmDHVVbqMtzwlmNC4k9Kx39r5s2vcFl4tXqW7g9/ViXYuiDXb0RfUpZiIUW89siKrkzmQ5=
dM7
wRqzgJpJwK8Bn2MIxAKArekWpiCKvBOB/Cc+3EXE78XdlxLyOi/NrmSGRIov0karw2RzMNOu5=
D+j
LRZQd1Sv27AR+IP3I8U4aqnhLpwhK7MEy9oCILlgZ1QZe49kpcumcZKORmzBTNh30FVKK1Evm=
V2x
AKDoaEOgQB4iFQLhJCdP1I5aSgM5IVFdn7v5YgEYuJYx37IoN1EblHI//x/e2AaIHpzK5h88N=
Eaw
QsaNRpNSrcfbFmAg987ATQRTjHAWAQgAyzH6AOODMBjgfWE9VeCgsrwH3exNAU32gLq2xvjpW=
nHI
s98ndPUDpnoxWQugJ6MpMncr0xSwFmHEgnSEjK/PAjppgmyc57BwKII3sV4on+gDVFJR6Y8ZR=
wgn
BC5mVM6JjQ5xDk8WRXljExRfUX9pNhdE5eBOZJrDRoLUmmjDtKzWaDhIg/+1Hzz93X4fCQkNV=
bVF
LELU9bMaLPBG/x5q4iYZ2k2ex6d47YE1ZFdMm6YBYMOljGkZKwYde5ldM9mo45mmwe0icXKLk=
pEd
IXKTZeKDO+Hdv1aqFuAcccTg9RXDQjmwhC3yEmrmcfl0+rPghO0Iv3OOImwTEe4co3c1mwARA=
QAB
wsBfBBgBAgAJBQJTjHAWAhsMAAoJELDendYovxMvQ/gH/1ha96vm4P/L+bQpJwrZ/dneZcmEw=
Tbe
8YFsw2V/Buv6Z4Mysln3nQK5ZadD534CF7TDVft7fC4tU4PONxF5D+/tvgkPfDAfF77zy2AH1=
vJz
Q1fOU8lYFpZXTXIHb+559UqvIB8AdgR3SAJGHHt4RKA0F7f5ipYBBrC6cyXJyyoprT10EMvU8=
VGi
wXvTyJz3fjoYsdFzpWPlJEBRMedCot60g5dmbdrZ5DWClAr0yau47zpWj3enf1tLWaqcsuylW=
svi
uGjKGw7KHQd3bxALOknAp4dN3QwBYCKuZ7AddY9yjynVaD5X7nF9nO5BjR/i1DG86lem3iBDX=
zXs
ZDn8R38=3D
=3D2wuH
-----END PGP PUBLIC KEY BLOCK-----

--------------ABA0B815A5B864B832260E8B--

--kIonFKJi2YzXeYHIXjoGkrp8dW9qDQLaQ--

--LJ84wkOoGvpkTOYSJk04bukxIJd4NuWQK
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmDkNHoFAwAAAAAACgkQsN6d1ii/Ey8d
9Qf+MstIWLhnZYxniJReo6jHtUQSQ2rUpFlTJapnMcuCNNsRuzoFb2kWrrLOVkG0ZYgs9j3IuRfS
+M692Zb71I1OviraMa03pksMjHvaCLNBMydwTpCFHt19IswILmLbGdES3pwKKJZFkQ4RU/2DX/n+
q0HiCFclrt4x+Nlx4CQHwCe/LmwPUNWKXKGV2/xD84IEGoTmDvPOVbzq64ZzlDTzicMxHZGxQmHX
2lYdVrGEHFv4VWOl3Y/G2JKbUE4sqBdG5BT9a4Y17BkdgQbh2nMqebaTHA4MjFG2YeCMODgJRDCW
sLesp67WtJHPM0GucbqP4Go4UK47orGCS68LLihHew==
=e3P7
-----END PGP SIGNATURE-----

--LJ84wkOoGvpkTOYSJk04bukxIJd4NuWQK--
