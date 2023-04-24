Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4708A6ED1DC
	for <lists.bridge@lfdr.de>; Mon, 24 Apr 2023 18:00:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E17981FA2;
	Mon, 24 Apr 2023 16:00:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E17981FA2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=uYkrKKyU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Yb2unEeK76k; Mon, 24 Apr 2023 16:00:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 928DB81F91;
	Mon, 24 Apr 2023 16:00:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 928DB81F91
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4662FC008A;
	Mon, 24 Apr 2023 16:00:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DFF5DC002A
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 16:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93AFD409A2
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 16:00:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93AFD409A2
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com
 header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=uYkrKKyU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4dpiOokhovwt for <bridge@lists.linux-foundation.org>;
 Mon, 24 Apr 2023 16:00:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31DE14098B
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31DE14098B
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 16:00:00 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id
 d2e1a72fcca58-63b7588005fso3958295b3a.0
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 09:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1682351999;
 x=1684943999; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4kLDgafokn5x18GtTd+H6a14Z4DMxmnCa80D7PeLVP0=;
 b=uYkrKKyUtV1StUmdzNvBAn/Wjmql+OVygRxELaLbibhk0MBZtiaVnJeWhB87271I3+
 qY9m8UD87FWczYLHPvdmQbAyp1K88Mq1XrrxHRgjySCOmO3nCeV8G1DFbHXEEb9j7rg6
 hKcEh5ZXdyUAStZY7FFCGHvVfS48tDTpajhiWZR5QYoQrinybfucQmmfmGfu1gs+7x/i
 HVANjeACLCSHmEQ+D/T0a57DHZgge7NY4l8DFI9W0WjqyqgyBKPU5TENc4oCOfQs4mpx
 p2H5rj6lMIKdqRQ7Qahg879uj7wNWbj4immZh2CWDtZvlQ2JoRj1mu1PfvALlnCCxIEM
 ehfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682351999; x=1684943999;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4kLDgafokn5x18GtTd+H6a14Z4DMxmnCa80D7PeLVP0=;
 b=PsL07hFWkCxyMlr7IPkl8mWPwm+wL2IsYLpgZoHzWMob5M7U5NICKEvhnadY7y8Zyn
 XQ+xFX3b7imCIgW4v8qn2a3W3a6vOEKODq69RdTJrUD7ZplLKAnTu1Z1j4GJh/mJtjDX
 qfVPWTPcXyDbDd00InYFjGMfBQ5NepnqI7g5nKhJKiNffe8P7Wt6j0KAEA5q8JtX5g/2
 0j1XWxLXmNpboufdfeuluHoK3k7PnRbhQi0lR0bz0NLNS8T40vzHmFmpUCIYJ+8+tUUo
 ebQyW1YHNw0Fwel8spOBJiw/8KlBAIfqhVxxLTTWLpMQU9akVbmHkVslsOck3yYIa9c3
 I4Zw==
X-Gm-Message-State: AAQBX9c91J9Z11elGc4GqPb+Bp8BOpgs/rb9NoA/wiVdaAoDFhv/5uxO
 +H98qoIXOX7HyghNw+kyw9tSXw==
X-Google-Smtp-Source: AKy350b1M8viTDSsdJd2O7T60H0YZoVte5oecG/7do4ljw0iLolWgbZfu2zHqF3rFIfXaAW+h+E5bQ==
X-Received: by 2002:a05:6a00:1496:b0:63d:4407:b6c with SMTP id
 v22-20020a056a00149600b0063d44070b6cmr20396535pfu.7.1682351999526; 
 Mon, 24 Apr 2023 08:59:59 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 s18-20020a056a00195200b0063b96574b8bsm7593251pfk.220.2023.04.24.08.59.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Apr 2023 08:59:59 -0700 (PDT)
Date: Mon, 24 Apr 2023 08:59:49 -0700
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20230424085949.4bf52ac0@hermes.local>
In-Reply-To: <ZEakbR71vNuLnEFp@shredder>
References: <ZEZK9AkChoOF3Lys@Laptop-X1>
	<ZEakbR71vNuLnEFp@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Hangbin Liu <liuhangbin@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [Question] Any plan to write/update the bridge doc?
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
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Mon, 24 Apr 2023 18:46:53 +0300
Ido Schimmel <idosch@nvidia.com> wrote:

> On Mon, Apr 24, 2023 at 05:25:08PM +0800, Hangbin Liu wrote:
> > Hi,
> >=20
> > Maybe someone already has asked. The only official Linux bridge documen=
t I
> > got is a very ancient wiki page[1] or the ip link man page[2][3]. As th=
ere are
> > many bridge stp/vlan/multicast paramegers. Should we add a detailed ker=
nel
> > document about each parameter? The parameter showed in ip link page see=
ms
> > a little brief. =20
>=20
> I suggest improving the man pages instead of adding kernel
> documentation. The man pages are the most up to date resource and
> therefore the one users probably refer to the most. Also, it's already
> quite annoying to patch both "ip-link" and "bridge" man pages when
> adding bridge port options. Adding a third document and making sure all
> three resources are patched would be a nightmare...
>=20
> >=20
> > I'd like to help do this work. But apparently neither my English nor my
> > understanding of the code is good enough. Anyway, if you want, I can he=
lp
> > write a draft version first and you (bridge maintainers) keep working o=
n this. =20
>=20
> I can help reviewing man page patches if you want. I'm going to send
> some soon. Will copy you.
>=20
> >=20
> > [1] https://wiki.linuxfoundation.org/networking/bridge
> > [2] https://man7.org/linux/man-pages/man8/bridge.8.html
> > [3] https://man7.org/linux/man-pages/man8/ip-link.8.html
> >=20
> > Thanks
> > Hangbin =20

Yes, please update the iproute2 man pages.
=46rom there, I can make the old wiki just be a reference to them.
And Michael will pickup the man7.org versions from the current iproute2.

The iproute2 git tree is single source of current documentation please.
