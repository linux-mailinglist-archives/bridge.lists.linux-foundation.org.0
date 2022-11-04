Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2031F619CC9
	for <lists.bridge@lfdr.de>; Fri,  4 Nov 2022 17:14:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A4F64193E;
	Fri,  4 Nov 2022 16:14:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A4F64193E
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=ZXT4b7xG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cUTdv9A_9f3y; Fri,  4 Nov 2022 16:14:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D84B64189B;
	Fri,  4 Nov 2022 16:14:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D84B64189B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 73CCEC0077;
	Fri,  4 Nov 2022 16:14:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1B777C002D
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 16:14:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E691E60AE8
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 16:14:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E691E60AE8
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ZXT4b7xG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nGjY7Mo0ODGv for <bridge@lists.linux-foundation.org>;
 Fri,  4 Nov 2022 16:14:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30BA5608D8
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30BA5608D8
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 16:14:49 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id r83so5671116oih.2
 for <bridge@lists.linux-foundation.org>; Fri, 04 Nov 2022 09:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=vkBGgKFgg4QPXCpHtMi6j0J3ZcIgUdwyTJWClmiO8n8=;
 b=ZXT4b7xGHkwhtyRx7V1geQfUresoJ3Ad36AKxZcA+hYEkLlZTMmJdsg3FLF6RZb4Bm
 /Th2KOsiFM+wv4AFPnrljoJs2GpR7KNawydYt2C5cew9YFo+qW0UidzKrk4BDuG1u7w+
 m3w563eSaiPwL3l4sGKZaD+ak6hpgQhlR7eGCpJqdUtIM7CX7IVrS9HVCezWAA8wIfI4
 tbWxHgw8jm41jK3k3dRhGJKkPfEdX95COskXHfzG/e/VIoBDLovAFvOX7zEd4Utr1gQo
 7jv8BY+ymXeC+5KaWJgeXULPlc8QwCY2a+1Wc4m/cSjP0OKV+9XQ8V5888RvdMmc7n4q
 obpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vkBGgKFgg4QPXCpHtMi6j0J3ZcIgUdwyTJWClmiO8n8=;
 b=hB7c7aaRB7IN8L+iYaAMF3iFESFUzDveCOACSIHP0UDUkZXP/qKfhxIcg60UB1meLr
 mua37r9u+cYKmOBq5xBrWKo8lM9yoDFakgnSNPEJDHgud86sWKdkXIQgnSn0IYZ2g2wq
 2D4W1+uPVE/A9xF7hoL/727citek1GE64Hsv8dTyQz+AFE6DoQ8JQbZgH53Yzoq4XsT2
 WmjO8TTFoYc816G1wMgwMW1exqsYQsESUolTvGOt3X+3HrrZ3K9eLRZ/cqxBUFZXA2Z8
 FN+YNOh8OFY1DKkr4lgLoHTkSMFEPFQD+jBgnr9PVgFrzszt0pHWl70Oc1jLuEpoXWEK
 7Zfw==
X-Gm-Message-State: ACrzQf1NQXyxlpuKMXtdnRYX4l1pIOZGTEreP7rZd7s5JTl4u9S5IzuT
 r3lMdBswxCTCUdF8XARPJJ0=
X-Google-Smtp-Source: AMsMyM7iFweEsB11T8MsAxnRkCeRKLOBdX0O0x9jUekHKEg87JfqIXfJu5mpVtFVdszEhc175Hq8Tw==
X-Received: by 2002:aca:d841:0:b0:35a:5959:590d with SMTP id
 p62-20020acad841000000b0035a5959590dmr2855416oig.120.1667578488108; 
 Fri, 04 Nov 2022 09:14:48 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 p36-20020a05687056a400b0013b1301ce42sm1894684oao.47.2022.11.04.09.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 09:14:47 -0700 (PDT)
Date: Fri, 4 Nov 2022 09:14:45 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104161445.GA1866159@roeck-us.net>
References: <20221027163453.383bbf8e@gandalf.local.home>
 <CAHk-=whoS+krLU7JNe=hMp2VOcwdcCdTXhdV8qqKoViwzzJWfA@mail.gmail.com>
 <20221027170720.31497319@gandalf.local.home>
 <20221027183511.66b058c4@gandalf.local.home>
 <20221028183149.2882a29b@gandalf.local.home>
 <20221028154617.3c63ba68@kernel.org>
 <27a6a587fee5e9172e41acd16ae1bc1f556fdbd7.camel@redhat.com>
 <20221103175123.744d0f37@rorschach.local.home>
 <CANn89iLv9cak6_vXJG5t=Kq+eiMPdMxF8w4AAuAuFB5sOsy2zg@mail.gmail.com>
 <20221104015139.58f17730@rorschach.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104015139.58f17730@rorschach.local.home>
Cc: Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-afs@lists.infradead.org,
 Menglong Dong <imagedong@tencent.com>, bridge@lists.linux-foundation.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Martin KaFai Lau <martin.lau@kernel.org>,
 Kuniyuki Iwashima <kuniyu@amazon.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mirko Lindner <mlindner@marvell.com>, linux-nfs@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, Stephen Boyd <sboyd@kernel.org>,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 netfilter-devel@vger.kernel.org,
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

On Fri, Nov 04, 2022 at 01:51:39AM -0400, Steven Rostedt wrote:
> On Thu, 3 Nov 2022 17:00:20 -0700
> Eric Dumazet <edumazet@google.com> wrote:
> 
> >  inet_csk_clear_xmit_timers() can be called multiple times during TCP
> > socket lifetime.
> > 
> > (See tcp_disconnect(), which can be followed by another connect() ... and loop)
> > 
> > Maybe add a second parameter, or add a new
> > inet_csk_shutdown_xmit_timers() only called from tcp_v4_destroy_sock() ?
> > 
> 
> I guess.
> 
> > >
> > >  void inet_csk_delete_keepalive_timer(struct sock *sk)
> > >  {
> > > -       sk_stop_timer(sk, &sk->sk_timer);
> > > +       sk_shutdown_timer(sk, &sk->sk_timer);  
> > 
> > SO_KEEPALIVE can be called multiple times in a TCP socket lifetime,
> > on/off/on/off/...
> > 
> > I suggest leaving sk_stop_timer() here.
> > 
> > Eventually  inet_csk_clear_xmit_timers( sk, destroy=true) (or
> > inet_csk_shutdown_xmit_timers(())
> >    will  be called before the socket is destroyed.
> 
> OK. 
> 
> Guenter,
> 
> I posted a new series, but did not include this change. If you want to
> test that other series, I would suggest to at least add the first part
> of this patch, otherwise it will trigger. But we want to see if there's
> other locations of issue that we should care about.
> 

I'll run a test on the other series without change first. We'll see what
happens. If necessary I'll add [parts of] this patch and re-test, but
before doing that I would like to get a sense for the status of your
series as-is.

Thanks,
Guenter
