Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BB15782064
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:37:14 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2692CF7A;
	Mon,  5 Aug 2019 15:37:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8F42DF0B
	for <bridge@lists.linux-foundation.org>;
	Mon,  5 Aug 2019 15:37:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
	[209.85.214.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 792E58A0
	for <bridge@lists.linux-foundation.org>;
	Mon,  5 Aug 2019 15:37:03 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id c2so36596670plz.13
	for <bridge@lists.linux-foundation.org>;
	Mon, 05 Aug 2019 08:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=IRwF9LcUlQWxUq9PPqblhb72po/0PsaeK9IhbHvtKSw=;
	b=J8VTnqEcl+q++gkO5ZCmeaPUmNOK6ILcZdiBSqJo0A9e8dNBhIqrJRW3YuA+D3kpdr
	QL37mz/OkJbx7yhpVmEW57PnEBXqHFhWwBjxv7Kpte2ZKkWpVxv2Is4q+nxnOy+rFul3
	vOfaER055skqSa2Np5QydqprkANU+AVb5PkyygjQIPSvkw2kqpQ2MhzeCtLDJ/LfcBj6
	h/4sFHIz71DZDzREXbUe2eGY9i3YpA9gYaafanN3ftHbEE678/wIAty8K9jsA3kImMJc
	cgvyiEdeOsmXYoD99q/VjXaH0XKKdxPjntGsUq4PuqG52/WCexF6LqJxp5wghg9j8XMf
	hkJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=IRwF9LcUlQWxUq9PPqblhb72po/0PsaeK9IhbHvtKSw=;
	b=KzzxS9iTGI/FtfalWhMbzWmlzfbssI01fnRb9DZIQRURkYqngBlHswuD09TNkTujZN
	fk61R3fxNl0zP5iUNJcDDWcYA851Fk5JkaJswF4QBt0duMpzrzZ5eiKtLGS6LRJ5v0jC
	lTQAlUOswDuMnJDnY+CKch92XDNPBJenSakIxeh9Re8CFZRnyL0kTWS1+dlhjV20nhXj
	PxLJkW43LWYGOIC3nngxh9QyGagmihDnYVWXiMW2zs8c3Er7r0VONVDr7uHFEMgudWsU
	E7mc2eSLs/sP+Rb7bZo3p8SamwvjiC0FKLueaVQX8uxLatgvq7ylDHAzOdgx1ssFe4p/
	gkuA==
X-Gm-Message-State: APjAAAWwGsUMHUWUe2mdRwGyDJfTvlQuzZlFNlze9b+WZp3WfN5vSunD
	IzKvAcfmZ0JrYtBzgD8TPtxXvVjw
X-Google-Smtp-Source: APXvYqwZNiblw5ezcoB2V9/UIaQd66mm8wj/XH2KZe0Jt+h/L8w5dsOSMl9dNMCLieYAW9VElcCtRQ==
X-Received: by 2002:a17:902:724:: with SMTP id
	33mr141292166pli.49.1565019422741; 
	Mon, 05 Aug 2019 08:37:02 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
	by smtp.gmail.com with ESMTPSA id
	f64sm88003871pfa.115.2019.08.05.08.37.01
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 05 Aug 2019 08:37:01 -0700 (PDT)
Date: Mon, 5 Aug 2019 08:32:32 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: John Clark via Bridge <bridge@lists.linux-foundation.org>
Message-ID: <20190805083232.202d0d47@hermes.lan>
In-Reply-To: <A23F6E83-0634-4BFA-AE82-DA947D3544CF@aim.com>
References: <A23F6E83-0634-4BFA-AE82-DA947D3544CF@aim.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: John Clark <jeclark2006@aim.com>
Subject: Re: [Bridge] Split path for packets,
 and bridge configuration problem.
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

On Wed, 31 Jul 2019 11:55:37 -0700
John Clark via Bridge <bridge@lists.linux-foundation.org> wrote:

> I=E2=80=99m trying to configure a Linux system to bridge an ethernet link=
 for packet ingress from a local network and combine that with a radio link=
 for the reply packet egress.
>=20
> I vaguely recall something like this use to be used for Satellite links, =
where the incoming packets from the outside world were via the Sat link, bu=
t outgoing packets were via a terrestrial link, phone modem or DSL, dependi=
ng.
>=20
> What I have working is the packet entering the bridge on the ethernet lin=
k, then I see the MAC address of the node from the in the =E2=80=98bridge s=
how=E2=80=99 output, but even if I assign the MAC address to the =E2=80=98r=
adio=E2=80=99 tap interface, I see both the =E2=80=98ethernet=E2=80=99 port=
 as =E2=80=98master=E2=80=99, and the tap device as =E2=80=98self=E2=80=99,=
 but no packets are sent to the tap device.
>=20
> In the past I=E2=80=99ve just written user apps that basically implement =
tunnels and using collection of such apps and taps, gotten packets to where=
 I need them to be.
>=20
> I was trying to use more standard tools, and not write more custom code.
>=20
> Thanks for any assistance.
> John Clark.
>=20

Hacks like this are best done with netfilter.
