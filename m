Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BB37682036
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:30:27 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A2EBCEDC;
	Mon,  5 Aug 2019 15:26:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AEE50410D
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 19:15:44 +0000 (UTC)
X-Greylist: delayed 00:10:00 by SQLgrey-1.7.6
Received: from sonic308-55.consmr.mail.gq1.yahoo.com
	(sonic308-55.consmr.mail.gq1.yahoo.com [98.137.68.31])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 63ADBA8
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 19:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aim.com; s=a2048;
	t=1564600544; bh=Xf6EC8BZEYPRUd/RHRAnCys6BP1a6r+eNkdmdNo0RJw=;
	h=From:Subject:Date:To:From:Subject;
	b=oKsvsxV93lL7BynaeGraHqjISzbVenF1qk7sbOAF5KK1oRUmI2xFbF13ijuECIxjbgldw8j/xMW3t1TPqIkJT/QidrR2QgWof+uKiTNwQm2/QrsIjuiuIfBLQDSJJYOd5nwvFRNO/w/MSVBEdMp4zDsDzl+J2sJtMZRqLKgRPrnB1phRwd0UWA3i8BrgfwYCdn4MSMEat1HqfQUs26Z1puOmhU0Ak2zk65+DxBY+6bVaUlJRZ/qtqPG7xAuep5/YbimE8p44vAISfIA0WiMxMwycvt7u38LpYz6+a6/LPIOby9Cb5QMAywhGNfn8HaIgSBtXQPQfEhPbWrOrL+mHyg==
X-YMail-OSG: 9bGtGzcVM1k_g0TWbgMpXjNk0vaS1Yfl6MYtHHsFK0kr4dTsbgNRHUT4VXYQiCL
	KP60UQGJDdiNJWqISqGGb6qrBfGtvtk9wHClZ7f7qUAaf8aRCbEytXbndRXc_iqgNZmQLMGI_TgT
	aufsfCEaYE7z.vRDI5zeo.imP3fIaqE.D5nVIsiN_76kMdvkKMP9y_niap8f15MEOMu0XRkIGQNt
	YnSWvlOva2odeYzUxOm8bk9m09m7OmrNhANyaZrFvLw4iac6DJO1JaEt3K4tbKEjn4cy0Kfc6tWy
	HtMPlVzEHIzhpovH81irss9zuZv6jfNuRqkGpZZFbAAxBY4MC7FhggaPu8uz9FlcKPGC_ccNy4ht
	gumhGKLYLRsHA96VsCxTQICrwoWMjKe_sJWKtnc54VHDGEi3k5.dc3zUWhYLH43UrUNanr3Q3Yac
	IQJu6x82HEdi6hqrK.dlZ.FnsXajZ_LD7CyAjQci2EH0L75BgkC6yGOYUV0qgaHYRtiijBTWoG_0
	vJupIr8A4WgF.Z9suii3e6Fc6MMsbFFFf0OWP1EBIUhImfAg8RjtcgoqNttw1MCoi53q8VolXL._
	uK13dCDrxk8WmdrZDNXde1chWXLcp1vdY71kCtnFDMk_Oktv0T84Db5oYR23QQlK1HQiDG3oeRcu
	vPSyU5Q9W_zPAze8PeK6WU3VnYyi0VJJwZVMHoJ8YohyMfACaeEuYTl1mZ67sfJFMx320MZfK_UV
	PqAKyMYNEcLdSyRvKTpn_nQ1KpebW6nDZ650uP0.DyhTKYSAS7tIuNN7T4FhgUBQKEmkCz0Uec0G
	FfB52LsMt1PUN9Tdzz7PrCdLE4uXcRD8z8C0g8s_pyNno.P7ulpXr1UhyPgggYq5wo6gzybDxG4q
	w3nrYQVlLASABR8eXehYB1CrOeeSGtDgrgd6ujfKgO..OfuxDjZIXO9IOtVpU4S5pNHq6MSrBvGC
	LMYnRm5Dq7pnWg5bgR1LpKPL36g_mnGJ68gLu8kgwlmUPY0ESMXJV.UgoMlAcMJ1NVzXpRLgCkmm
	cUdASeZK87Muws4ZHfrd7o5Y0Ee.bYuAJQH4jVkjjFD4vw2O8N7MQISLFFlZCyvFEie6rWppkKIn
	Cbg9wBLwReaIfwVriYXHJCN9Epqm.C1iggBGen5YqrV4JW927WS.h6Fl8rWCs0lWzM_51sQmCgCq
	GIujNydmWKkDP_izhntscMi4THiN3TPjAbzR2
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.gq1.yahoo.com with HTTP;
	Wed, 31 Jul 2019 19:15:44 +0000
Received: by smtp413.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
	ID 979920ad4f52350114c1c628aaa231f7; 
	Wed, 31 Jul 2019 18:55:40 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <A23F6E83-0634-4BFA-AE82-DA947D3544CF@aim.com>
Date: Wed, 31 Jul 2019 11:55:37 -0700
To: bridge@lists.linux-foundation.org
X-Mailer: Apple Mail (2.3445.104.11)
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 05 Aug 2019 15:25:46 +0000
Subject: [Bridge] Split path for packets, and bridge configuration problem.
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
From: John Clark via Bridge <bridge@lists.linux-foundation.org>
Reply-To: John Clark <jeclark2006@aim.com>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org


I=E2=80=99m trying to configure a Linux system to bridge an ethernet =
link for packet ingress from a local network and combine that with a =
radio link for the reply packet egress.

I vaguely recall something like this use to be used for Satellite links, =
where the incoming packets from the outside world were via the Sat link, =
but outgoing packets were via a terrestrial link, phone modem or DSL, =
depending.

What I have working is the packet entering the bridge on the ethernet =
link, then I see the MAC address of the node from the in the =E2=80=98brid=
ge show=E2=80=99 output, but even if I assign the MAC address to the =
=E2=80=98radio=E2=80=99 tap interface, I see both the =E2=80=98ethernet=E2=
=80=99 port as =E2=80=98master=E2=80=99, and the tap device as =
=E2=80=98self=E2=80=99, but no packets are sent to the tap device.

In the past I=E2=80=99ve just written user apps that basically implement =
tunnels and using collection of such apps and taps, gotten packets to =
where I need them to be.

I was trying to use more standard tools, and not write more custom code.

Thanks for any assistance.
John Clark.

