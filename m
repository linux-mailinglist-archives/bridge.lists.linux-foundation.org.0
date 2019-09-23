Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D307AC3ED9
	for <lists.bridge@lfdr.de>; Tue,  1 Oct 2019 19:43:41 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 701242300;
	Tue,  1 Oct 2019 17:43:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 68CBEC3A
	for <bridge@lists.linux-foundation.org>;
	Mon, 23 Sep 2019 22:26:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 900D2108
	for <bridge@lists.linux-foundation.org>;
	Mon, 23 Sep 2019 22:26:24 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id h33so14434760edh.12
	for <bridge@lists.linux-foundation.org>;
	Mon, 23 Sep 2019 15:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=rs2RJDT5CsHbbEtk6Tq8OPTXVr0+QPsaOdJbfaooK0s=;
	b=aj0n9SYvFIYCRxpn20Jz+FRTJT0KI+N5uVRMrxxEpuhyjLbdEoS1G9UzMTavhqTMWL
	1LCe2i8i2ERqrH2v8e+Br3FQO+eO6jERm2FkKcW6wPK0ChFI2+XTooznTacB4rvoJzbJ
	EwL2dOAquvmqhdDCmqLqSIMqII9gJxgpCwt4zV/JvI+xFOKzoT9d2Gxer0x6aoxYbYFw
	PfcImqKzbV6AYykpbw9rwmP+G5tfi1N5t8tyx5ueI1CdVQ14TsY2lS6yEO5k5j41/Gpy
	JPpOQXcdiOsRx8HloPeT68q5AHuowfy7lgwJaRyrfeF0Jdy0vCjpTW0WM1crdjdZ7sIC
	OJgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=rs2RJDT5CsHbbEtk6Tq8OPTXVr0+QPsaOdJbfaooK0s=;
	b=YL/9KgoQKM/Sqp2tg6aJODbpKm7aow6IwMH8tjOZEveOMo0qaG4x53u1mWfoE7iPAQ
	1vtsRGFdi//PokqEfm+h6c65y7Wgj1/NaemquSosY8sEH4ftTtbydJ1hIr2MYXmVjCnq
	YTS/Gnit9txhOKo/WhWieWlosqpFhqSm8oMZ3MtK6bzoRbhQSpDAKA7L/pohhmbOP6r2
	I934J9kCgOliPiBPRaeAV5/hqslyibeeXsZHxWuY4oeTgC2VlB59pQozPfL9ratOYWc4
	9xa7IvouI3iqfqtqzKKGa0HRBNaLlWtzgFUEDVMU1bywRDo7POBxYmmhqKiT17+pxgi1
	hceQ==
X-Gm-Message-State: APjAAAWNZALnQx1Ejz1yKYG7o4P80cEIYWVIAlE4Yww1c93qxpI/S+g5
	fcQ4Hlckr39v/1UvlkDwnh0GNlVbdtbv2+qDVxk=
X-Google-Smtp-Source: APXvYqySJ1IkREdlT+UI4UOVQVT+SfLT1tYPl30tjmrGFsNVQKX6YQUTs7Yc92vR0eMvX6JFzK296KU+kWVADdNeZTs=
X-Received: by 2002:a50:918d:: with SMTP id g13mr2529336eda.64.1569277583256; 
	Mon, 23 Sep 2019 15:26:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa7:c354:0:0:0:0:0 with HTTP; Mon, 23 Sep 2019 15:26:22
	-0700 (PDT)
In-Reply-To: <20190807155738.GA9394@azazel.net>
References: <20190807183606.372ca1a4@canb.auug.org.au>
	<f54391d9-6259-d08b-8b5f-c844093071d8@infradead.org>
	<20190807155738.GA9394@azazel.net>
From: Ivan Kalvachev <ikalvachev@gmail.com>
Date: Tue, 24 Sep 2019 01:26:22 +0300
Message-ID: <CABA=pqeES0C2+7GpAOYuCOqd5DrbZhjS1Tkrxn4kGxXQJkrAfg@mail.gmail.com>
To: Jeremy Sowden <jeremy@azazel.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Tue, 01 Oct 2019 17:43:21 +0000
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
	Randy Dunlap <rdunlap@infradead.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	bridge@lists.linux-foundation.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: [Bridge] linux-next: Tree for Aug 7
	(net/bridge/netfilter/nf_conntrack_bridge.c)
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

On 8/7/19, Jeremy Sowden <jeremy@azazel.net> wrote:
> On 2019-08-07, at 08:29:44 -0700, Randy Dunlap wrote:
>> On 8/7/19 1:36 AM, Stephen Rothwell wrote:
>> > Hi all,
>> >
>> > Changes since 20190806:
>>
>> on i386:
>> when CONFIG_NF_TABLES is not set/enabled:
>>
>>   CC      net/bridge/netfilter/nf_conntrack_bridge.o
>> In file included from
>> ../net/bridge/netfilter/nf_conntrack_bridge.c:21:0:
>> ../include/net/netfilter/nf_tables.h: In function
>> =E2=80=98nft_gencursor_next=E2=80=99:
>> ../include/net/netfilter/nf_tables.h:1224:14: error: =E2=80=98const stru=
ct
>> net=E2=80=99 has no member named =E2=80=98nft=E2=80=99; did you mean =E2=
=80=98nf=E2=80=99?
>>   return net->nft.gencursor + 1 =3D=3D 1 ? 1 : 0;
>>               ^~~
>
> I've just posted a series of fixes for netfilter header compilation
> failures, and I think it includes the fix for that:
>
>
> https://lore.kernel.org/netdev/20190807141705.4864-5-jeremy@azazel.net/T/=
#u

Have these patches been committed?

I just hit the same bug in linux-5.3.1 release.
