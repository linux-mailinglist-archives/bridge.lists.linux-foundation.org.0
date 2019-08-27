Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 77034A59C8
	for <lists.bridge@lfdr.de>; Mon,  2 Sep 2019 16:53:00 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B7B6CC83;
	Mon,  2 Sep 2019 14:52:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5906F16FD
	for <bridge@lists.linux-foundation.org>;
	Tue, 27 Aug 2019 14:55:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9B42642D
	for <bridge@lists.linux-foundation.org>;
	Tue, 27 Aug 2019 14:55:13 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id m44so31727317edd.9
	for <bridge@lists.linux-foundation.org>;
	Tue, 27 Aug 2019 07:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=J28up6uPKD34qaYuEApixR8UwpIcwgN+tKjvn/kdwk8=;
	b=pMVrBsv09u5KWA+6vj2Cr0qR0GSZe6r8BMU1JSA+mY2m8bDJ+IdYJXV+hJDfmP273h
	03KsR0CTQqVWzTM8EllBHW37q99IulCpwRlLntm1wh7QpBeheqcUWjdGcF92vEjKdwGe
	JWg1stYWqsmHKwaAOkhxXnI4at6LB104kKnM4BFKCBSqOUYTlJLleTaPM+cWFcES1i88
	zXTO9JvkAZyanLSswiDgGLU/w5Lg9OUsu2V4nZRlg9a47CKLJgik6d2SfwFNb8UzzLdP
	TduGiWMz2vDnqLl/Tjwin5PPv0YyzSGJtEK4Qh0lsI17GPFMi0jTeoxn4o37yhTPsYs/
	Yajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=J28up6uPKD34qaYuEApixR8UwpIcwgN+tKjvn/kdwk8=;
	b=S63qvjfsJwsIy9Msyxzn4dLoy9rzJnJctLmAh89Lje/7h7PYseEzLZkWSm0GCR2cYt
	SnbckT5+uGwfmoq4RQAuoU7qqey/zYH3JpqQzMTYMSPyMrBbZ6Icjuy93T6421rlDagh
	IwRtmxvvpy06joDZxguR2sYBUn4ZaLF3ywY7/fWpXgXfF9+Rifs7p3ZU8OoI0BFUX7js
	5tCUTFP3UZ4zNE1TVIaM4DvLg3yeM1hyyPwmYCD0Fc26cdNxi30tpOQwJuT0yOGxGuGT
	zw9bPGSX/nFz1uYdocUrCef9AR2t04WspDo7jMPIcDQbT2hkHJjLg7VmWMgxy6qa4AyD
	AAGw==
X-Gm-Message-State: APjAAAUv0JbaeCAmo+igNWs7Yi0IOLS0U0lPiqIkTetynSiGpO9ECLEp
	yBCBiiL2Aj0dKHizlb8lvjcEeK05XjQatsiIDdM=
X-Google-Smtp-Source: APXvYqwpdkTQqMFYaHNmnBUxl9LiyKGwNSuxlXy0J60wneAG3Ifqr5uUMFvDC7+xGCyeK/INY6fNuNmfO28F3cIuk8s=
X-Received: by 2002:a17:906:9607:: with SMTP id
	s7mr21872991ejx.300.1566917712168; 
	Tue, 27 Aug 2019 07:55:12 -0700 (PDT)
MIME-Version: 1.0
References: <1566807075-775-1-git-send-email-horatiu.vultur@microchip.com>
	<20190826123811.GA13411@lunn.ch>
	<20190827101033.g2cb6j2j4kuyzh2a@soft-dev3.microsemi.net>
	<20190827131824.GC11471@lunn.ch>
In-Reply-To: <20190827131824.GC11471@lunn.ch>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 27 Aug 2019 17:55:00 +0300
Message-ID: <CA+h21hrRafYQm8eOcXjNVwudDbu-2=miWD6nCUJdh0jAGE319w@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 02 Sep 2019 14:52:48 +0000
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	nikolay@cumulusnetworks.com, netdev <netdev@vger.kernel.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org, lkml <linux-kernel@vger.kernel.org>,
	UNGLinuxDriver@microchip.com,
	"Allan W. Nielsen" <allan.nielsen@microchip.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [PATCH v2 0/3] Add NETIF_F_HW_BR_CAP feature
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

On Tue, 27 Aug 2019 at 16:20, Andrew Lunn <andrew@lunn.ch> wrote:
>
> > That sounds like a great idea. I was expecting to add this logic in the
> > set_rx_mode function of the driver. But unfortunetly, I got the calls to
> > this function before the dev->promiscuity is updated or not to get the
> > call at all. For example in case the port is member of a bridge and I try
> > to enable the promisc mode.
>
> Hi Horatiu
>
> What about the notifier? Is it called in all the conditions you need
> to know about?
>
> Or, you could consider adding a new switchdev call to pass this
> information to any switchdev driver which is interested in the
> information.
>
> At the moment, the DSA driver core does not pass onto the driver it
> should put a port into promisc mode. So pcap etc, will only see
> traffic directed to the CPU, not all the traffic ingressing the
> interface. If you put the needed core infrastructure into place, we
> could plumb it down from the DSA core to DSA drivers.
>
> Having said that, i don't actually know if the Marvell switches
> support this. Forward using the ATU and send a copy to the CPU?  What
> switches tend to support is port mirroring, sending all the traffic
> out another port. A couple of DSA drivers support that, via TC.
>

But the CPU port is not a valid destination for port mirroring in DSA,
I might add.

>         Andrew

Regards,
-Vladimir
