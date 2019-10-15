Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 343FBD73CE
	for <lists.bridge@lfdr.de>; Tue, 15 Oct 2019 12:49:19 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8DFD7BE4;
	Tue, 15 Oct 2019 10:49:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59998B43
	for <bridge@lists.linux-foundation.org>;
	Tue, 15 Oct 2019 10:49:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AD51F88E
	for <bridge@lists.linux-foundation.org>;
	Tue, 15 Oct 2019 10:49:05 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id i16so20315761wmd.3
	for <bridge@lists.linux-foundation.org>;
	Tue, 15 Oct 2019 03:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=date:in-reply-to:references:mime-version:content-transfer-encoding
	:subject:to:cc:from:message-id;
	bh=vb+V5G1fB6s4se4aNOPSNT85ySMUe6CSa81Te8JBoRE=;
	b=Ws9ob7nauEn+3EsJY6I5+GXnH49DvTwHXX/MxLUJ3LY8uxK868wT+FZpNOmdrNlOgT
	xkdZCWfJ6AiUBpIoNJm5/bjk09IK4XLr+8YirI5DC0dOgbs//TjihQtEVMK8ymCVAWQ6
	v1pEcVGEFGd+XsMDjbejhcZ+W0iUpyWyU/DtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:cc:from:message-id;
	bh=vb+V5G1fB6s4se4aNOPSNT85ySMUe6CSa81Te8JBoRE=;
	b=Y09S1wFE4UN+BCDLjbESPCVObInXsBk4oX+dsnlFJ71gSz0Vodgj9J4g6dyCPwjsk7
	AZ4m4C28I45vkVyXbrOGUMfAPKXY/PIltcSrez0Bb3mg6MWbagXn78N5tvMDYW4VPyMt
	agciDjnXWbl4a+wkMQZLdofSJnKG/1lB7QArYBUCf3ao876XwTi44SWBVGef45KU1dW4
	aII0WDgDF2yzRy7M+ypSXc5dkfOhEOa1MFFyyhEnE4puwqNWGIPDgOw4WhHKLilJ0BZ/
	44FbBj+H3ut+U5/temm72PuZJ6HlBz+pwxwJT0F8Cr3D/PQenpaIfSfJVJ8sFNwghLPD
	4SqA==
X-Gm-Message-State: APjAAAXiGsAPMB5tetjzdVEdrGLsiCTYKsDWs9RMCAh3Zv23FEJdgFD8
	e14HyWvS0K5G5XJuOreni9xjDw==
X-Google-Smtp-Source: APXvYqxqk+PcUuGuepeG7DFxASrTImgJnXo3yNaAx+CI3Nc2GiDWOYAG0mPq2KL1TrVGJjEXPEAOGA==
X-Received: by 2002:a7b:ca4b:: with SMTP id m11mr18075692wml.129.1571136544210;
	Tue, 15 Oct 2019 03:49:04 -0700 (PDT)
Received: from localhost ([149.62.203.53]) by smtp.gmail.com with ESMTPSA id
	s1sm30565484wrg.80.2019.10.15.03.49.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Oct 2019 03:49:03 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:48:58 +0200
In-Reply-To: <CAFLxGvwnOi6dSq5yLM78XskweQOY6aPbRt==G9wv5qS+dfj8bw@mail.gmail.com>
References: <CAFLxGvwnOi6dSq5yLM78XskweQOY6aPbRt==G9wv5qS+dfj8bw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: Richard Weinberger <richard.weinberger@gmail.com>,netdev@vger.kernel.org
From: nikolay@cumulusnetworks.com
Message-ID: <3A7BDEE0-7C07-4F23-BA01-F32AD41451BB@cumulusnetworks.com>
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

On 14 October 2019 22:33:22 CEST, Richard Weinberger <richard=2Eweinberger@=
gmail=2Ecom> wrote:
>Hi!
>
>My userspace needs /sys/class/net/eth0/brport/group_fwd_mask, so I set
>up udev rules
>to wait for the sysfs file=2E
>Without luck=2E
>Also "udevadm monitor" does not show any event related to
>/sys/class/net/eth0/brport when I assign eth0 to a bridge=2E
>
>First I thought that the bridge code just misses to emit some events
>but
>br_add_if() calls kobject_uevent() which is good=2E
>
>Greg gave me the hint that the bridge code might not use the kobject
>model
>correctly=2E
>
>Enabling kobjekt debugging shows that all events are dropped:
>[   36=2E904602] device eth0 entered promiscuous mode
>[   36=2E904786] kobject: 'brport' (0000000028a47e33): kobject_uevent_env
>[   36=2E904789] kobject: 'brport' (0000000028a47e33):
>kobject_uevent_env: filter function caused the event to drop!
>
>If I understood Greg correctly this is because the bridge code uses
>plain kobjects which
>have a parent object=2E Therefore all events are dropped=2E
>
>Shouldn't brport be a kset just like net_device->queues_kset?


Hi Richard,=20
I'm currently traveling and will be out of reach until mid-next week when =
I'll be
able to take a closer look, but one thing which comes to mind is that on
any bridge/port option change there should also be a netlink notification =
which
you could use=2E I'll look into this and will probably cook a fix, if anyo=
ne hasn't
beaten me to it by then=2E :)=20

Cheers,
  Nik
