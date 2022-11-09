Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C65623367
	for <lists.bridge@lfdr.de>; Wed,  9 Nov 2022 20:25:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E5B7403B8;
	Wed,  9 Nov 2022 19:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E5B7403B8
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.a=rsa-sha256 header.s=protonmail3 header.b=FcyUZluU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yTldhCKR6aws; Wed,  9 Nov 2022 19:25:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 7684540382;
	Wed,  9 Nov 2022 19:25:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7684540382
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1AB3FC0077;
	Wed,  9 Nov 2022 19:25:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E445DC002D
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 19:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB8FC403B8
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 19:25:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB8FC403B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DocFbCwW4pyG for <bridge@lists.linux-foundation.org>;
 Wed,  9 Nov 2022 19:25:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F0E640382
Received: from mail-4325.protonmail.ch (mail-4325.protonmail.ch [185.70.43.25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F0E640382
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 19:25:41 +0000 (UTC)
Date: Wed, 09 Nov 2022 19:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1668021939; x=1668281139;
 bh=MyKsGlL0oBbIKkxurAz73K2CFqI8NWhukd85W0LmgnM=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=FcyUZluUfuuRKWEpUcACTGC83uQwvj4yIMuoHcKzZbhZToupp1pjc7J+RGddXIPcx
 UvB8VzQE9qpZTcWIuXey8NU3sJ5wgeAA8VIqx8BW4sVOYYqJl1d9d21hmGaCbGaFpx
 60GP60KPbxBNbz/nuqdU9m8I86L0pCAqMHIESw993ThPAzpDicAt+/0OLRt7rv0ylz
 O3RVU+Fc1WmzmpU7B0n9SHihVxNnOlXhEAQSiP1CduncP6katuAvWfXWGW8ZYlvwpe
 sACyB/I2cPckrcRd0LdKdqkZvI+pW84AHtlLfQ3lnYOkKsDDQv1ITcfyuuUDy+qFI4
 8w6IIkqMRfTvQ==
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <pPm5jFjNYHBUzqlDouAIg2v7XTQZJnHIVSWXoYOaTijreJ22xAZOSAcwJXHJiTLN8jIAQCs-LeX7hp9hp-FaxW-HGjn69fc6-eG3Kv6lxc4=@protonmail.com>
In-Reply-To: <20221109085109.6b0f87d3@hermes.local>
References: <nWfVbvdboX65r0xMXv0iZCj8TH7c8vStvilCD3Ilx5Y42yoHh34rJHJBMy8y4HhqXWXM0n3tLhLD870c863UjI20HBSxM8qwJlLMxuPjg0g=@protonmail.com>
 <20221109085109.6b0f87d3@hermes.local>
Feedback-ID: 33196921:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Ali Shirvani via Bridge <bridge@lists.linux-foundation.org>
Subject: Re: [Bridge] How to connect more than 200 interfaces to a bridge
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
From: Ali Shirvani via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ali Shirvani <alishirv@protonmail.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>






Sent with Proton Mail secure email.

------- Original Message -------
On Wednesday, November 9th, 2022 at 8:21 PM, Stephen Hemminger <stephen@net=
workplumber.org> wrote:


> On Wed, 09 Nov 2022 10:51:27 +0000
> Ali Shirvani via Bridge bridge@lists.linux-foundation.org wrote:
>=20
> > Hello everyone,
> >=20
> > It seems we reach the Linux bridge limitation on the number of interfac=
es in a single bridge. Currently, we have 210 tap interface in a bridge, an=
d we suffer from more than 50% packet loss when we ping the IP address of t=
he virtual machine that uses one of the tap interfaces in the bridge.
> > Do you know how we can connect more than 200 VMs virtual interfaces to =
a bridge?
> >=20
> > Best regards,
> > Ali
> >=20
> > Sent with Proton Mail secure email.
>=20
>=20
> The upper limit on interfaces per bridge should be 1023.
> That limitation comes from spanning tree.
>=20
> You might bet able to improve performance by disabling flooding to those =
tap devices.
> Normally, any broadcast/unknown/multicast must be copied and flooded to e=
ach interface.

Thanks a lot for your guidance. I disabled the spanning tree on the bridge =
with `brctl stp br0 off` but the issue does not resolve. Would you please e=
laborate more about disabling flooding on tap devices, I don't know how I s=
hould disable flooding on tap devices.
