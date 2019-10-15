Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D1330D73F5
	for <lists.bridge@lfdr.de>; Tue, 15 Oct 2019 12:53:57 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 34A4AC6D;
	Tue, 15 Oct 2019 10:53:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA694C11
	for <bridge@lists.linux-foundation.org>;
	Tue, 15 Oct 2019 10:53:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 805AC6D6
	for <bridge@lists.linux-foundation.org>;
	Tue, 15 Oct 2019 10:53:45 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id n14so23222870wrw.9
	for <bridge@lists.linux-foundation.org>;
	Tue, 15 Oct 2019 03:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=date:in-reply-to:references:mime-version:content-transfer-encoding
	:subject:to:cc:from:message-id;
	bh=t9JNwNnz0MMTe3QyxhZNifL/YXLeokq/XWr1Cby0nIk=;
	b=K6B6JJj1TENhjw2ZnCPorz9mWOiEHjvOIa1JlAYB7QKtjJ1RgCwUV6ZRboPWlCCCED
	aBe3yfxxrWUj3WQN3s0UlcqE1PZOEtK8dxbTlnU2/a3L0COi09XY0wZqIMq6KHCsPIdR
	JUGGjpQIYNG2h3QQffPw0pyhZmyjO69ifC+v8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:cc:from:message-id;
	bh=t9JNwNnz0MMTe3QyxhZNifL/YXLeokq/XWr1Cby0nIk=;
	b=LrXGSoNYJxs5n0VQSUmYWC+QCl+1TAkqeNYsyvjMOn6H5Pfhx4N1sNS3QLhtjz6Hu/
	7oSAkh7UIJlpLSe9pTNpNUJ/YTvw4CntwvfWXNa2tQbJjhT7fwGk1VL/eVkg1dYJyBTU
	04CrkI2TdhJSAg9UbDlbiVsd7+PUBEv8gd5buUj8Qz74H9LSU1CTWB0bmBGVZ/7Gjhid
	yDNAvfKUZUFEHDP2Nh0hiXMi7XAvtllQyjFxAr9GwnAby95qOml0Q9CyG2i2J+rjN693
	VNoCk46KZ1jug49vR/v5zhwhlYdsaoAKgd4UdUM5WAGLlVNI3DQ/3gRcCRXcajL0FR61
	VokA==
X-Gm-Message-State: APjAAAWD6xAHiq8p074NAL+tkJ/rWtvIvlfaVAlTBclgAUWi0RvdRecZ
	E16huMmI3C3u2iE35aCEDILe1A==
X-Google-Smtp-Source: APXvYqwVWCXaOCc1JiydfZnDENNmiEk+GlNIPEm5oXDo4GldG8TK0564EBItrS/ak4F49iW3VqeI6Q==
X-Received: by 2002:adf:fa12:: with SMTP id m18mr30408123wrr.248.1571136824149;
	Tue, 15 Oct 2019 03:53:44 -0700 (PDT)
Received: from localhost ([149.62.203.53]) by smtp.gmail.com with ESMTPSA id
	q22sm18554433wmj.5.2019.10.15.03.53.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Oct 2019 03:53:43 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:53:39 +0200
In-Reply-To: <3A7BDEE0-7C07-4F23-BA01-F32AD41451BB@cumulusnetworks.com>
References: <CAFLxGvwnOi6dSq5yLM78XskweQOY6aPbRt==G9wv5qS+dfj8bw@mail.gmail.com>
	<3A7BDEE0-7C07-4F23-BA01-F32AD41451BB@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: Richard Weinberger <richard.weinberger@gmail.com>,netdev@vger.kernel.org
From: nikolay@cumulusnetworks.com
Message-ID: <5A4A5745-5ADC-4AAC-B060-1BC9907C153C@cumulusnetworks.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] Bridge port userspace events broken?
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On 15 October 2019 12:48:58 CEST, nikolay@cumulusnetworks=2Ecom wrote:
>On 14 October 2019 22:33:22 CEST, Richard Weinberger
><richard=2Eweinberger@gmail=2Ecom> wrote:
>>Hi!
>>
>>My userspace needs /sys/class/net/eth0/brport/group_fwd_mask, so I set
>>up udev rules
>>to wait for the sysfs file=2E
>>Without luck=2E
>>Also "udevadm monitor" does not show any event related to
>>/sys/class/net/eth0/brport when I assign eth0 to a bridge=2E
>>
>>First I thought that the bridge code just misses to emit some events
>>but
>>br_add_if() calls kobject_uevent() which is good=2E
>>
>>Greg gave me the hint that the bridge code might not use the kobject
>>model
>>correctly=2E
>>
>>Enabling kobjekt debugging shows that all events are dropped:
>>[   36=2E904602] device eth0 entered promiscuous mode
>>[   36=2E904786] kobject: 'brport' (0000000028a47e33):
>kobject_uevent_env
>>[   36=2E904789] kobject: 'brport' (0000000028a47e33):
>>kobject_uevent_env: filter function caused the event to drop!
>>
>>If I understood Greg correctly this is because the bridge code uses
>>plain kobjects which
>>have a parent object=2E Therefore all events are dropped=2E
>>
>>Shouldn't brport be a kset just like net_device->queues_kset?
>
>
>Hi Richard,=20
>I'm currently traveling and will be out of reach until mid-next week
>when I'll be
>able to take a closer look, but one thing which comes to mind is that
>on
>any bridge/port option change there should also be a netlink
>notification which
>you could use=2E I'll look into this and will probably cook a fix, if
>anyone hasn't
>beaten me to it by then=2E :)=20
>
>Cheers,
>  Nik

I meant the notifications could be used to configure the port mask once th=
e
netdev is enslaved as well as for monitoring changes to them=2E=20
Generally we prefer using netlink for configuration changes, some
of the bridge options are only accessible via netlink (e=2E g=2E vlan conf=
ig)=2E=20


