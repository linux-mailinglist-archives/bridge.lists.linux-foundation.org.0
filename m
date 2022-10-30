Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B19BE62F368
	for <lists.bridge@lfdr.de>; Fri, 18 Nov 2022 12:12:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D71340140;
	Fri, 18 Nov 2022 11:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D71340140
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=DprYLL7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A2njLKerIQMV; Fri, 18 Nov 2022 11:12:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2C02640CA9;
	Fri, 18 Nov 2022 11:12:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C02640CA9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9A12EC007B;
	Fri, 18 Nov 2022 11:12:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2EEA8C002D
 for <bridge@lists.linux-foundation.org>; Sun, 30 Oct 2022 17:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E979D60670
 for <bridge@lists.linux-foundation.org>; Sun, 30 Oct 2022 17:22:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E979D60670
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DprYLL7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qpo8lmOvAV_l for <bridge@lists.linux-foundation.org>;
 Sun, 30 Oct 2022 17:22:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3591C605AC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3591C605AC
 for <bridge@lists.linux-foundation.org>; Sun, 30 Oct 2022 17:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667150531;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xy7b3nRtAL8M7+VedHsmmAKhtOAAl2XLancWVFWUXlg=;
 b=DprYLL7Egkml7INxACtxk2WTXNU/oB6vcLwo6VYQ8Wn5xXo94eBlZLumhMizda/1lglgEE
 aDCIkAQbLRE8Y9+U57pXpJ3KxbHyKfFx4J73T8YH8JUODn05TQODtFXgUzM3r/90Aa2KVx
 YwEs0hV/8gjZYRo8uL1ipAZ89Tn+kak=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-390-Hr7rm95kN0Gsnmli0Rk5iA-1; Sun, 30 Oct 2022 13:22:10 -0400
X-MC-Unique: Hr7rm95kN0Gsnmli0Rk5iA-1
Received: by mail-qt1-f200.google.com with SMTP id
 u31-20020a05622a199f00b003a51fa90654so872972qtc.19
 for <bridge@lists.linux-foundation.org>; Sun, 30 Oct 2022 10:22:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xy7b3nRtAL8M7+VedHsmmAKhtOAAl2XLancWVFWUXlg=;
 b=DWwKDf4Mv7uCIMh4DzHVCox0nqCAaczvN4tGltLYN/BVj6fjBQToWH4Eml50SAUL00
 2K/DJ9BbbpyBzOfsioy5bUZnf4Ok+cR5IDCWeugVgOqtrEzNN/y3JjATdTYd3MxHLNvz
 jyKik9nZpV0f+AhNnkVzkpBW0Yb0DXe3tTT/oPEu3kjAh9C/X4/Zys22nFQqwvx+K1J+
 eJSOEIBZF36N696CAVlR5r0UJXvYU9INRulf1St1jhH8mdepG2xpt6m5hWCihzKfJ5jZ
 ZEnee9dHX1/l9XGvfNShmX/VSNMft5udDzfSwMB5o84FM0teEoa9Z1zYJ9ON0K+1eQB6
 kRyA==
X-Gm-Message-State: ACrzQf1zF2Cdze1GBBBI3wUIwDtGN27uZd8Ecz2y9RwjyWN9x6gTsNji
 iRwxIWh2oNqAlU05si3p0y17M/MMrpNsb/lwyFYLggW0LLFNiXoGXW8c+YGrP6QzHmZDpBRlMKS
 jFQWz0lW91y1ty8q8wwgr5dDu6tSPhok=
X-Received: by 2002:ac8:598b:0:b0:39d:9b6:69b3 with SMTP id
 e11-20020ac8598b000000b0039d09b669b3mr7692940qte.39.1667150529824; 
 Sun, 30 Oct 2022 10:22:09 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5Dk+KkOvrrP3MpVWYtppipjk4B4K/I4Euc13541SOxoveysaouQDittrzMAvU/bssh9bNjNA==
X-Received: by 2002:ac8:598b:0:b0:39d:9b6:69b3 with SMTP id
 e11-20020ac8598b000000b0039d09b669b3mr7692910qte.39.1667150529468; 
 Sun, 30 Oct 2022 10:22:09 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-106-170.dyn.eolo.it.
 [146.241.106.170]) by smtp.gmail.com with ESMTPSA id
 s16-20020a05620a255000b006ee7923c187sm3213642qko.42.2022.10.30.10.22.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Oct 2022 10:22:08 -0700 (PDT)
Message-ID: <27a6a587fee5e9172e41acd16ae1bc1f556fdbd7.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Date: Sun, 30 Oct 2022 18:22:03 +0100
In-Reply-To: <20221028154617.3c63ba68@kernel.org>
References: <20221027150525.753064657@goodmis.org>
 <20221027150928.780676863@goodmis.org>
 <20221027155513.60b211e2@gandalf.local.home>
 <CAHk-=wjAjW2P5To82+CAM0Rx8RexQBHPTVZBWBPHyEPGm37oFA@mail.gmail.com>
 <20221027163453.383bbf8e@gandalf.local.home>
 <CAHk-=whoS+krLU7JNe=hMp2VOcwdcCdTXhdV8qqKoViwzzJWfA@mail.gmail.com>
 <20221027170720.31497319@gandalf.local.home>
 <20221027183511.66b058c4@gandalf.local.home>
 <20221028183149.2882a29b@gandalf.local.home>
 <20221028154617.3c63ba68@kernel.org>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 18 Nov 2022 11:12:50 +0000
Cc: Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-afs@lists.infradead.org,
 Menglong Dong <imagedong@tencent.com>, bridge@lists.linux-foundation.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, tipc-discussion@lists.sourceforge.net,
 Guenter Roeck <linux@roeck-us.net>, Martin KaFai Lau <martin.lau@kernel.org>,
 Kuniyuki Iwashima <kuniyu@amazon.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mirko Lindner <mlindner@marvell.com>, linux-nfs@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, netfilter-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Pavel Begunkov <asml.silence@gmail.com>
Subject: Re: [Bridge] [RFC][PATCH v2 19/31] timers: net: Use
 del_timer_shutdown() before freeing timer
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

On Fri, 2022-10-28 at 15:46 -0700, Jakub Kicinski wrote:
> On Fri, 28 Oct 2022 18:31:49 -0400 Steven Rostedt wrote:
> > Could someone from networking confirm (or deny) that the timer being
> > removed in sk_stop_timer() will no longer be used even if del_timer()
> > returns false?
> > 
> > net/core/sock.c:
> > 
> > void sk_stop_timer(struct sock *sk, struct timer_list* timer)
> > {
> > 	if (del_timer(timer))
> > 		__sock_put(sk);
> > }
> > 
> > If this is the case, then I'll add the following interface:
> > 
> >    del_timer_sync_shutdown() // the common case which syncs
> > 
> >    del_timer_shutdown() // the uncommon case, that returns immediately
> >                         // used for those cases that add extra code to
> >                         // handle it, like sk_stop_timer()
> 
> Sorry too many bugs at once :)
> 
> FWIW Paolo was saying privately earlier today that he spotted some cases
> of reuse, he gave an example of ccid2_hc_tx_packet_recv()

For the records, there are other cases, e.g. after sk_stop_timer() in 
clear_3rdack_retransmission() (mptcp code) the timer can be-rearmed
without re-initializing. I *think* there are more of such use in the 
in ax25/rose code.

> So we can't convert all cases of sk_stop_timer() in one fell swoop :(

On the positive side, I think converting the sk_stop_timer in 
inet_csk_clear_xmit_timers() should be safe and should cover the issue
reported by Guenter

Cheers,

Paolo

