Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 821D624E922
	for <lists.bridge@lfdr.de>; Sat, 22 Aug 2020 19:46:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C7788648C;
	Sat, 22 Aug 2020 17:46:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wv4YS0WZSZYb; Sat, 22 Aug 2020 17:46:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF9A6864CD;
	Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B4096C07FF;
	Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8529EC0051
 for <bridge@lists.linux-foundation.org>; Fri, 21 Aug 2020 07:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6CF2A8861D
 for <bridge@lists.linux-foundation.org>; Fri, 21 Aug 2020 07:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7C3k5wYeR73g for <bridge@lists.linux-foundation.org>;
 Fri, 21 Aug 2020 07:47:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D741288639
 for <bridge@lists.linux-foundation.org>; Fri, 21 Aug 2020 07:47:29 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1597996046;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QYrfH5qNal9t0t0APe2l5SVZJtFbnfRRUDVhsTelToo=;
 b=r4ziFvu5Vua5RWt9RS6TyJ5FZrQA5+Y2S9lyVMTaNfgowWdFrSXCvOPB5uxQb34QROkIWt
 9RYA/fmbYFNvqiwo1LQ9y7eSlrK5yO2mxxNyKcLQaiD4XPcmJSFZbVkhfBo1gQEwuDyQ8f
 XgdPUIyRuGtUWXQIlsXqz+7BVvuZ0MVSOyLH7hDEVRxDRMFxM1UJk43jNtQ8oIGfBay9p2
 /1Sawlax/0f3Dbfi4XneyztBd0DwN1l8GSjWnYXSq/boVAYV2Cpm9ZNt02nNnuaSAicRL0
 6RFy8DlPCWq9HAjx4HcbvmY8OdmABXAaQr8zgdHUSPh1Arbazq3c5rXQeA3rCQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1597996046;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QYrfH5qNal9t0t0APe2l5SVZJtFbnfRRUDVhsTelToo=;
 b=w/7+d0Tny9TyRZEVmtObOKW02dRTXpJAS3imgLh6EBGfYkg5b+3BfbTaKNMKIATS3i1eMT
 IbNQxdWek8IwM3Bw==
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Roopa Prabhu <roopa@cumulusnetworks.com>
In-Reply-To: <5affe98d-bb16-0744-5266-db708fb9dc16@cumulusnetworks.com>
References: <20200820105737.5089-1-kurt@linutronix.de>
 <5affe98d-bb16-0744-5266-db708fb9dc16@cumulusnetworks.com>
Date: Fri, 21 Aug 2020 09:47:25 +0200
Message-ID: <87mu2oe8z6.fsf@kurt>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Approved-At: Sat, 22 Aug 2020 17:45:56 +0000
Cc: Jakub Kicinski <kuba@kernel.org>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org
Subject: Re: [Bridge] [RFC PATCH] net: bridge: Don't reset time stamps on
	SO_TXTIME enabled sockets
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

--=-=-=
Content-Type: text/plain

On Thu Aug 20 2020, Nikolay Aleksandrov wrote:
> The new conditionals will be for all forwarded packets, not only the
> ones that are transmitted through the bridge master device.

I see makes sense.

> If you'd like to do this please limit it to the bridge dev transmit.

I'm wondering how to do that. The problem is that the time stamp is
reset to zero unconditionally in br_forward_finish(). This function is
also called in the transmit path.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAl8/fA0ACgkQeSpbgcuY
8KYR+BAAiaaCs1BIj0Ogf9yXoq5Krdd1Wi27yOkqGGkP081+wuLYUwsFDtxXRxJ8
d4Eh/M6TxWWKHovkzEc0HXtBhWNkbt+SYXiJ6tNTv4OkaNNJl/PmPPOG5CWpUr3j
scFu9xwYR0EeOir79QaTpsNR3dpxbLkrjZFQBAyqVO6UrdZ+Ra8iWT9/iNY/rDXH
Fjabd6QkWO1hIprWdrC+pMKAtre38xHdO+GjCWUQi8GY09X44FcpZwoHJsC9u7AD
ClAHLHGQWMqqqui1QQGN9pXN5iiwwNefSUOCr1VMxg1s0dNE8G5PLYegteDwyDAi
to6sXj7bGa28M1uxkjtxxL4SXhGiCTjeRDImTZGjMCrP8KSyxDiZNI1VbDCqd6+3
QKLiS65/W9vLVY/BSd7/nk5+7aG8KwxtPubKLQ/EN3z24HDtUUajw1UKtuP7XdQa
+DGX0KbJDNGKsQW9yAznM0RBRj9w6bH19tsABbyaA2QUBAJz/VNOO2sHPOjC9hCr
7FsVL7MPhKBf9FuuEQdbq0xB+XpXOZSjKYnAQrqW0J7x+IJKRbrhdVLLfU3OVuH8
QBOSGkBhY9S8wW/LjPCFbCs1ziez0wIHjdbz8l+1QJLVe/XFjZiFY6X+/HgJv4Ap
TDAhSvn2Hqk5ezYbzJCLuEGTeEPhGQgyjHYJK8XEYwOQwgyvNgM=
=enjn
-----END PGP SIGNATURE-----
--=-=-=--
